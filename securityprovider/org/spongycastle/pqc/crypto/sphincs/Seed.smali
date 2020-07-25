.class Lorg/spongycastle/pqc/crypto/sphincs/Seed;
.super Ljava/lang/Object;
.source "Seed.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 8
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "seed"    # [B
    .param p2, "seedOff"    # I
    .param p3, "sk"    # [B
    .param p4, "a"    # Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    .prologue
    const/16 v7, 0x20

    .line 14
    const/16 v4, 0x28

    new-array v0, v4, [B

    .line 18
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 20
    aget-byte v4, p3, v1

    aput-byte v4, v0, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget v4, p4, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    int-to-long v2, v4

    .line 26
    .local v2, "t":J
    iget-wide v4, p4, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 28
    iget-wide v4, p4, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v6, 0x3b

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 30
    invoke-static {v2, v3, v0, v7}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 32
    array-length v4, v0

    invoke-virtual {p0, p1, p2, v0, v4}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->varlen_hash([BI[BI)I

    .line 33
    return-void
.end method

.method static prg([BIJ[BI)V
    .locals 8
    .param p0, "r"    # [B
    .param p1, "rOff"    # I
    .param p2, "rlen"    # J
    .param p4, "key"    # [B
    .param p5, "keyOff"    # I

    .prologue
    .line 39
    const/16 v1, 0x8

    new-array v6, v1, [B

    .line 41
    .local v6, "nonce":[B
    new-instance v0, Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    .line 43
    .local v0, "cipher":Lorg/spongycastle/crypto/StreamCipher;
    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v4, 0x20

    invoke-direct {v3, p4, p5, v4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 45
    long-to-int v3, p2

    move-object v1, p0

    move v2, p1

    move-object v4, p0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 48
    return-void
.end method
