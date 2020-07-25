.class public Lorg/spongycastle/crypto/modes/GCFBBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source "GCFBBlockCipher.java"


# static fields
.field private static final C:[B


# instance fields
.field private final cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

.field private counter:J

.field private forEncryption:Z

.field private key:Lorg/spongycastle/crypto/params/KeyParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x0t
        0x72t
        0x22t
        0x64t
        -0x37t
        0x4t
        0x23t
        -0x73t
        0x3at
        -0x25t
        -0x6at
        0x46t
        -0x17t
        0x2at
        -0x3ct
        0x18t
        -0x2t
        -0x54t
        -0x6ct
        0x0t
        -0x13t
        0x7t
        0x12t
        -0x40t
        -0x7at
        -0x24t
        -0x3et
        -0x11t
        0x4ct
        -0x57t
        0x2bt
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    .line 37
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 14
    .param p1, "b"    # B

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 86
    iget-wide v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    cmp-long v3, v4, v12

    if-lez v3, :cond_0

    iget-wide v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v6, 0x400

    rem-long/2addr v4, v6

    cmp-long v3, v4, v12

    if-nez v3, :cond_0

    .line 88
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    .line 90
    .local v0, "base":Lorg/spongycastle/crypto/BlockCipher;
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v8, v3}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 92
    const/16 v3, 0x20

    new-array v2, v3, [B

    .line 94
    .local v2, "nextKey":[B
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v3, v8, v2, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 95
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v3, v9, v2, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 96
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v3, v10, v2, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 97
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    invoke-interface {v0, v3, v11, v2, v11}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 99
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 101
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 103
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getCurrentIV()[B

    move-result-object v1

    .line 105
    .local v1, "iv":[B
    invoke-interface {v0, v1, v8, v1, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 107
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    iget-boolean v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v6, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 110
    .end local v0    # "base":Lorg/spongycastle/crypto/BlockCipher;
    .end local v1    # "iv":[B
    .end local v2    # "nextKey":[B
    :cond_0
    iget-wide v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 112
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3, p1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->calculateByte(B)B

    move-result v3

    return v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 67
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/G"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 45
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    .line 47
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 49
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 52
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    .line 54
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 57
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v0, :cond_2

    .line 59
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 62
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 63
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->processBytes([BII[BI)I

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 119
    return-void
.end method
