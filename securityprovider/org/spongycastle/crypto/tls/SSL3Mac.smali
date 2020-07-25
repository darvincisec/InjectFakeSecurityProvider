.class public Lorg/spongycastle/crypto/tls/SSL3Mac;
.super Ljava/lang/Object;
.source "SSL3Mac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field static final IPAD:[B

.field private static final IPAD_BYTE:B = 0x36t

.field static final OPAD:[B

.field private static final OPAD_BYTE:B = 0x5ct


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private padLength:I

.field private secret:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x30

    .line 22
    const/16 v0, 0x36

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/SSL3Mac;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/SSL3Mac;->IPAD:[B

    .line 23
    const/16 v0, 0x5c

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/SSL3Mac;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/SSL3Mac;->OPAD:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    .line 40
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 42
    const/16 v0, 0x28

    iput v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->padLength:I

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const/16 v0, 0x30

    iput v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->padLength:I

    goto :goto_0
.end method

.method private static genPad(BI)[B
    .locals 1
    .param p0, "b"    # B
    .param p1, "count"    # I

    .prologue
    .line 110
    new-array v0, p1, [B

    .line 111
    .local v0, "padding":[B
    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v5, 0x0

    .line 84
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v1, v2, [B

    .line 85
    .local v1, "tmp":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 87
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->secret:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->secret:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 88
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    sget-object v3, Lorg/spongycastle/crypto/tls/SSL3Mac;->OPAD:[B

    iget v4, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->padLength:I

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 89
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 91
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    .line 93
    .local v0, "len":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SSL3Mac;->reset()V

    .line 95
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SSL3MAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 62
    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->secret:[B

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SSL3Mac;->reset()V

    .line 65
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->secret:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->secret:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    sget-object v1, Lorg/spongycastle/crypto/tls/SSL3Mac;->IPAD:[B

    iget v2, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->padLength:I

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 106
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 75
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SSL3Mac;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 80
    return-void
.end method
