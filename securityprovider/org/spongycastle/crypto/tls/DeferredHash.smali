.class Lorg/spongycastle/crypto/tls/DeferredHash;
.super Ljava/lang/Object;
.source "DeferredHash.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsHandshakeHash;


# static fields
.field protected static final BUFFERING_HASH_LIMIT:I = 0x4


# instance fields
.field private buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field private hashes:Ljava/util/Hashtable;

.field private prfHashAlgorithm:Ljava/lang/Short;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/Short;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "prfHashAlgorithm"    # Ljava/lang/Short;
    .param p2, "prfHash"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method protected checkStopBuffering()V
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    .line 188
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 189
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    .line 192
    .local v1, "hash":Lorg/spongycastle/crypto/Digest;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    goto :goto_0

    .line 195
    .end local v1    # "hash":Lorg/spongycastle/crypto/Digest;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    .line 197
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    return-void
.end method

.method protected checkTrackingHash(Ljava/lang/Short;)V
    .locals 2
    .param p1, "hashAlgorithm"    # Ljava/lang/Short;

    .prologue
    .line 201
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    .line 204
    .local v0, "hash":Lorg/spongycastle/crypto/Digest;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v0    # "hash":Lorg/spongycastle/crypto/Digest;
    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forkPRFHash()Lorg/spongycastle/crypto/Digest;
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DeferredHash;->checkStopBuffering()V

    .line 92
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    .line 95
    .local v0, "prfHash":Lorg/spongycastle/crypto/Digest;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 99
    .end local v0    # "prfHash":Lorg/spongycastle/crypto/Digest;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    invoke-static {v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigestSize()I
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalHash(S)[B
    .locals 5
    .param p1, "hashAlgorithm"    # S

    .prologue
    .line 104
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    .line 105
    .local v1, "d":Lorg/spongycastle/crypto/Digest;
    if-nez v1, :cond_0

    .line 107
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HashAlgorithm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/HashAlgorithm;->getText(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not being tracked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    invoke-static {p1, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 116
    :cond_1
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v0, v2, [B

    .line 117
    .local v0, "bs":[B
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 118
    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 41
    return-void
.end method

.method public notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v1

    .line 46
    .local v1, "prfAlgorithm":I
    if-nez v1, :cond_0

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    .line 49
    .local v0, "legacyHash":Lorg/spongycastle/crypto/tls/CombinedHash;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/CombinedHash;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 50
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 51
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;->notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p0

    .line 58
    .end local v0    # "legacyHash":Lorg/spongycastle/crypto/tls/CombinedHash;
    .end local p0    # "this":Lorg/spongycastle/crypto/tls/DeferredHash;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "this":Lorg/spongycastle/crypto/tls/DeferredHash;
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v2

    invoke-static {v2}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    .line 56
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/DeferredHash;->checkTrackingHash(Ljava/lang/Short;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->reset()V

    .line 182
    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 177
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    .line 180
    .local v1, "hash":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    goto :goto_0
.end method

.method public sealHashAlgorithms()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DeferredHash;->checkStopBuffering()V

    .line 74
    return-void
.end method

.method public stopTracking()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 5

    .prologue
    .line 78
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/Digest;

    invoke-static {v3, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    .line 79
    .local v0, "prfHash":Lorg/spongycastle/crypto/Digest;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 83
    :cond_0
    new-instance v1, Lorg/spongycastle/crypto/tls/DeferredHash;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/tls/DeferredHash;-><init>(Ljava/lang/Short;Lorg/spongycastle/crypto/Digest;)V

    .line 84
    .local v1, "result":Lorg/spongycastle/crypto/tls/DeferredHash;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/tls/DeferredHash;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 85
    return-object v1
.end method

.method public trackHashAlgorithm(S)V
    .locals 2
    .param p1, "hashAlgorithm"    # S

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too late to track more hash algorithms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DeferredHash;->checkTrackingHash(Ljava/lang/Short;)V

    .line 69
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "input"    # B

    .prologue
    .line 133
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2, p1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->write(I)V

    .line 145
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 140
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    .line 143
    .local v1, "hash":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    goto :goto_0
.end method

.method public update([BII)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 149
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->buf:Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2, p1, p2, p3}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->write([BII)V

    .line 161
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 156
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/Digest;

    .line 159
    .local v1, "hash":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    goto :goto_0
.end method
