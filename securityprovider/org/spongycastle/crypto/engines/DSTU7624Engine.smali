.class public Lorg/spongycastle/crypto/engines/DSTU7624Engine;
.super Ljava/lang/Object;
.source "DSTU7624Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8

.field private static final BITS_IN_LONG:I = 0x40

.field private static final BITS_IN_WORD:I = 0x40

.field private static final ROUNDS_128:I = 0xa

.field private static final ROUNDS_256:I = 0xe

.field private static final ROUNDS_512:I = 0x12


# instance fields
.field private forEncryption:Z

.field private internalState:[J

.field private internalStateBytes:[B

.field private mdsInvMatrix:[[B

.field private mdsMatrix:[[B

.field private roundKeys:[[J

.field private roundsAmount:I

.field private sboxesForDecryption:[[B

.field private sboxesForEncryption:[[B

.field private tempInternalStateBytes:[B

.field private wordsInBlock:I

.field private wordsInKey:I

.field private workingKey:[J


# direct methods
.method public constructor <init>(I)V
    .locals 8
    .param p1, "blockBitLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x100

    const/16 v3, 0x8

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    new-array v0, v3, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    .line 612
    new-array v0, v3, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsInvMatrix:[[B

    .line 625
    const/4 v0, 0x4

    new-array v0, v0, [[B

    new-array v1, v4, [B

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    new-array v1, v4, [B

    fill-array-data v1, :array_11

    aput-object v1, v0, v6

    new-array v1, v4, [B

    fill-array-data v1, :array_12

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v4, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    .line 774
    const/4 v0, 0x4

    new-array v0, v0, [[B

    new-array v1, v4, [B

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    new-array v1, v4, [B

    fill-array-data v1, :array_15

    aput-object v1, v0, v6

    new-array v1, v4, [B

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v4, [B

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    .line 56
    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    div-int/lit8 v0, p1, 0x40

    iput v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    .line 62
    iget v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->tempInternalStateBytes:[B

    .line 66
    return-void

    .line 600
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
    .end array-data

    :array_4
    .array-data 1
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
    .end array-data

    :array_6
    .array-data 1
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
    .end array-data

    .line 612
    :array_8
    .array-data 1
        -0x53t
        -0x6bt
        0x76t
        -0x58t
        0x2ft
        0x49t
        -0x29t
        -0x36t
    .end array-data

    :array_9
    .array-data 1
        -0x36t
        -0x53t
        -0x6bt
        0x76t
        -0x58t
        0x2ft
        0x49t
        -0x29t
    .end array-data

    :array_a
    .array-data 1
        -0x29t
        -0x36t
        -0x53t
        -0x6bt
        0x76t
        -0x58t
        0x2ft
        0x49t
    .end array-data

    :array_b
    .array-data 1
        0x49t
        -0x29t
        -0x36t
        -0x53t
        -0x6bt
        0x76t
        -0x58t
        0x2ft
    .end array-data

    :array_c
    .array-data 1
        0x2ft
        0x49t
        -0x29t
        -0x36t
        -0x53t
        -0x6bt
        0x76t
        -0x58t
    .end array-data

    :array_d
    .array-data 1
        -0x58t
        0x2ft
        0x49t
        -0x29t
        -0x36t
        -0x53t
        -0x6bt
        0x76t
    .end array-data

    :array_e
    .array-data 1
        0x76t
        -0x58t
        0x2ft
        0x49t
        -0x29t
        -0x36t
        -0x53t
        -0x6bt
    .end array-data

    :array_f
    .array-data 1
        -0x6bt
        0x76t
        -0x58t
        0x2ft
        0x49t
        -0x29t
        -0x36t
        -0x53t
    .end array-data

    .line 625
    :array_10
    .array-data 1
        -0x58t
        0x43t
        0x5ft
        0x6t
        0x6bt
        0x75t
        0x6ct
        0x59t
        0x71t
        -0x21t
        -0x79t
        -0x6bt
        0x17t
        -0x10t
        -0x28t
        0x9t
        0x6dt
        -0xdt
        0x1dt
        -0x35t
        -0x37t
        0x4dt
        0x2ct
        -0x51t
        0x79t
        -0x20t
        -0x69t
        -0x3t
        0x6ft
        0x4bt
        0x45t
        0x39t
        0x3et
        -0x23t
        -0x5dt
        0x4ft
        -0x4ct
        -0x4at
        -0x66t
        0xet
        0x1ft
        -0x41t
        0x15t
        -0x1ft
        0x49t
        -0x2et
        -0x6dt
        -0x3at
        -0x6et
        0x72t
        -0x62t
        0x61t
        -0x2ft
        0x63t
        -0x6t
        -0x12t
        -0xct
        0x19t
        -0x2bt
        -0x53t
        0x58t
        -0x5ct
        -0x45t
        -0x5ft
        -0x24t
        -0xet
        -0x7dt
        0x37t
        0x42t
        -0x1ct
        0x7at
        0x32t
        -0x64t
        -0x34t
        -0x55t
        0x4at
        -0x71t
        0x6et
        0x4t
        0x27t
        0x2et
        -0x19t
        -0x1et
        0x5at
        -0x6at
        0x16t
        0x23t
        0x2bt
        -0x3et
        0x65t
        0x66t
        0xft
        -0x44t
        -0x57t
        0x47t
        0x41t
        0x34t
        0x48t
        -0x4t
        -0x49t
        0x6at
        -0x78t
        -0x5bt
        0x53t
        -0x7at
        -0x7t
        0x5bt
        -0x25t
        0x38t
        0x7bt
        -0x3dt
        0x1et
        0x22t
        0x33t
        0x24t
        0x28t
        0x36t
        -0x39t
        -0x4et
        0x3bt
        -0x72t
        0x77t
        -0x46t
        -0xbt
        0x14t
        -0x61t
        0x8t
        0x55t
        -0x65t
        0x4ct
        -0x2t
        0x60t
        0x5ct
        -0x26t
        0x18t
        0x46t
        -0x33t
        0x7dt
        0x21t
        -0x50t
        0x3ft
        0x1bt
        -0x77t
        -0x1t
        -0x15t
        -0x7ct
        0x69t
        0x3at
        -0x63t
        -0x29t
        -0x2dt
        0x70t
        0x67t
        0x40t
        -0x4bt
        -0x22t
        0x5dt
        0x30t
        -0x6ft
        -0x4ft
        0x78t
        0x11t
        0x1t
        -0x1bt
        0x0t
        0x68t
        -0x68t
        -0x60t
        -0x3bt
        0x2t
        -0x5at
        0x74t
        0x2dt
        0xbt
        -0x5et
        0x76t
        -0x4dt
        -0x42t
        -0x32t
        -0x43t
        -0x52t
        -0x17t
        -0x76t
        0x31t
        0x1ct
        -0x14t
        -0xft
        -0x67t
        -0x6ct
        -0x56t
        -0xat
        0x26t
        0x2ft
        -0x11t
        -0x18t
        -0x74t
        0x35t
        0x3t
        -0x2ct
        0x7ft
        -0x5t
        0x5t
        -0x3ft
        0x5et
        -0x70t
        0x20t
        0x3dt
        -0x7et
        -0x9t
        -0x16t
        0xat
        0xdt
        0x7et
        -0x8t
        0x50t
        0x1at
        -0x3ct
        0x7t
        0x57t
        -0x48t
        0x3ct
        0x62t
        -0x1dt
        -0x38t
        -0x54t
        0x52t
        0x64t
        0x10t
        -0x30t
        -0x27t
        0x13t
        0xct
        0x12t
        0x29t
        0x51t
        -0x47t
        -0x31t
        -0x2at
        0x73t
        -0x73t
        -0x7ft
        0x54t
        -0x40t
        -0x13t
        0x4et
        0x44t
        -0x59t
        0x2at
        -0x7bt
        0x25t
        -0x1at
        -0x36t
        0x7ct
        -0x75t
        0x56t
        -0x80t
    .end array-data

    :array_11
    .array-data 1
        -0x32t
        -0x45t
        -0x15t
        -0x6et
        -0x16t
        -0x35t
        0x13t
        -0x3ft
        -0x17t
        0x3at
        -0x2at
        -0x4et
        -0x2et
        -0x70t
        0x17t
        -0x8t
        0x42t
        0x15t
        0x56t
        -0x4ct
        0x65t
        0x1ct
        -0x78t
        0x43t
        -0x3bt
        0x5ct
        0x36t
        -0x46t
        -0xbt
        0x57t
        0x67t
        -0x73t
        0x31t
        -0xat
        0x64t
        0x58t
        -0x62t
        -0xct
        0x22t
        -0x56t
        0x75t
        0xft
        0x2t
        -0x4ft
        -0x21t
        0x6dt
        0x73t
        0x4dt
        0x7ct
        0x26t
        0x2et
        -0x9t
        0x8t
        0x5dt
        0x44t
        0x3et
        -0x61t
        0x14t
        -0x38t
        -0x52t
        0x54t
        0x10t
        -0x28t
        -0x44t
        0x1at
        0x6bt
        0x69t
        -0xdt
        -0x43t
        0x33t
        -0x55t
        -0x6t
        -0x2ft
        -0x65t
        0x68t
        0x4et
        0x16t
        -0x6bt
        -0x6ft
        -0x12t
        0x4ct
        0x63t
        -0x72t
        0x5bt
        -0x34t
        0x3ct
        0x19t
        -0x5ft
        -0x7ft
        0x49t
        0x7bt
        -0x27t
        0x6ft
        0x37t
        0x60t
        -0x36t
        -0x19t
        0x2bt
        0x48t
        -0x3t
        -0x6at
        0x45t
        -0x4t
        0x41t
        0x12t
        0xdt
        0x79t
        -0x1bt
        -0x77t
        -0x74t
        -0x1dt
        0x20t
        0x30t
        -0x24t
        -0x49t
        0x6ct
        0x4at
        -0x4bt
        0x3ft
        -0x69t
        -0x2ct
        0x62t
        0x2dt
        0x6t
        -0x5ct
        -0x5bt
        -0x7dt
        0x5ft
        0x2at
        -0x26t
        -0x37t
        0x0t
        0x7et
        -0x5et
        0x55t
        -0x41t
        0x11t
        -0x2bt
        -0x64t
        -0x31t
        0xet
        0xat
        0x3dt
        0x51t
        0x7dt
        -0x6dt
        0x1bt
        -0x2t
        -0x3ct
        0x47t
        0x9t
        -0x7at
        0xbt
        -0x71t
        -0x63t
        0x6at
        0x7t
        -0x47t
        -0x50t
        -0x68t
        0x18t
        0x32t
        0x71t
        0x4bt
        -0x11t
        0x3bt
        0x70t
        -0x60t
        -0x1ct
        0x40t
        -0x1t
        -0x3dt
        -0x57t
        -0x1at
        0x78t
        -0x7t
        -0x75t
        0x46t
        -0x80t
        0x1et
        0x38t
        -0x1ft
        -0x48t
        -0x58t
        -0x20t
        0xct
        0x23t
        0x76t
        0x1dt
        0x25t
        0x24t
        0x5t
        -0xft
        0x6et
        -0x6ct
        0x28t
        -0x66t
        -0x7ct
        -0x18t
        -0x5dt
        0x4ft
        0x77t
        -0x2dt
        -0x7bt
        -0x1et
        0x52t
        -0xet
        -0x7et
        0x50t
        0x7at
        0x2ft
        0x74t
        0x53t
        -0x4dt
        0x61t
        -0x51t
        0x39t
        0x35t
        -0x22t
        -0x33t
        0x1ft
        -0x67t
        -0x54t
        -0x53t
        0x72t
        0x2ct
        -0x23t
        -0x30t
        -0x79t
        -0x42t
        0x5et
        -0x5at
        -0x14t
        0x4t
        -0x3at
        0x3t
        0x34t
        -0x5t
        -0x25t
        0x59t
        -0x4at
        -0x3et
        0x1t
        -0x10t
        0x5at
        -0x13t
        -0x59t
        0x66t
        0x21t
        0x7ft
        -0x76t
        0x27t
        -0x39t
        -0x40t
        0x29t
        -0x29t
    .end array-data

    :array_12
    .array-data 1
        -0x6dt
        -0x27t
        -0x66t
        -0x4bt
        -0x68t
        0x22t
        0x45t
        -0x4t
        -0x46t
        0x6at
        -0x21t
        0x2t
        -0x61t
        -0x24t
        0x51t
        0x59t
        0x4at
        0x17t
        0x2bt
        -0x3et
        -0x6ct
        -0xct
        -0x45t
        -0x5dt
        0x62t
        -0x1ct
        0x71t
        -0x2ct
        -0x33t
        0x70t
        0x16t
        -0x1ft
        0x49t
        0x3ct
        -0x40t
        -0x28t
        0x5ct
        -0x65t
        -0x53t
        -0x7bt
        0x53t
        -0x5ft
        0x7at
        -0x38t
        0x2dt
        -0x20t
        -0x2ft
        0x72t
        -0x5at
        0x2ct
        -0x3ct
        -0x1dt
        0x76t
        0x78t
        -0x49t
        -0x4ct
        0x9t
        0x3bt
        0xet
        0x41t
        0x4ct
        -0x22t
        -0x4et
        -0x70t
        0x25t
        -0x5bt
        -0x29t
        0x3t
        0x11t
        0x0t
        -0x3dt
        0x2et
        -0x6et
        -0x11t
        0x4et
        0x12t
        -0x63t
        0x7dt
        -0x35t
        0x35t
        0x10t
        -0x2bt
        0x4ft
        -0x62t
        0x4dt
        -0x57t
        0x55t
        -0x3at
        -0x30t
        0x7bt
        0x18t
        -0x69t
        -0x2dt
        0x36t
        -0x1at
        0x48t
        0x56t
        -0x7ft
        -0x71t
        0x77t
        -0x34t
        -0x64t
        -0x47t
        -0x1et
        -0x54t
        -0x48t
        0x2ft
        0x15t
        -0x5ct
        0x7ct
        -0x26t
        0x38t
        0x1et
        0xbt
        0x5t
        -0x2at
        0x14t
        0x6et
        0x6ct
        0x7et
        0x66t
        -0x3t
        -0x4ft
        -0x1bt
        0x60t
        -0x51t
        0x5et
        0x33t
        -0x79t
        -0x37t
        -0x10t
        0x5dt
        0x6dt
        0x3ft
        -0x78t
        -0x73t
        -0x39t
        -0x9t
        0x1dt
        -0x17t
        -0x14t
        -0x13t
        -0x80t
        0x29t
        0x27t
        -0x31t
        -0x67t
        -0x58t
        0x50t
        0xft
        0x37t
        0x24t
        0x28t
        0x30t
        -0x6bt
        -0x2et
        0x3et
        0x5bt
        0x40t
        -0x7dt
        -0x4dt
        0x69t
        0x57t
        0x1ft
        0x7t
        0x1ct
        -0x76t
        -0x44t
        0x20t
        -0x15t
        -0x32t
        -0x72t
        -0x55t
        -0x12t
        0x31t
        -0x5et
        0x73t
        -0x7t
        -0x36t
        0x3at
        0x1at
        -0x5t
        0xdt
        -0x3ft
        -0x2t
        -0x6t
        -0xet
        0x6ft
        -0x43t
        -0x6at
        -0x23t
        0x43t
        0x52t
        -0x4at
        0x8t
        -0xdt
        -0x52t
        -0x42t
        0x19t
        -0x77t
        0x32t
        0x26t
        -0x50t
        -0x16t
        0x4bt
        0x64t
        -0x7ct
        -0x7et
        0x6bt
        -0xbt
        0x79t
        -0x41t
        0x1t
        0x5ft
        0x75t
        0x63t
        0x1bt
        0x23t
        0x3dt
        0x68t
        0x2at
        0x65t
        -0x18t
        -0x6ft
        -0xat
        -0x1t
        0x13t
        0x58t
        -0xft
        0x47t
        0xat
        0x7ft
        -0x3bt
        -0x59t
        -0x19t
        0x61t
        0x5at
        0x6t
        0x46t
        0x44t
        0x42t
        0x4t
        -0x60t
        -0x25t
        0x39t
        -0x7at
        0x54t
        -0x56t
        -0x74t
        0x34t
        0x21t
        -0x75t
        -0x8t
        0xct
        0x74t
        0x67t
    .end array-data

    :array_13
    .array-data 1
        0x68t
        -0x73t
        -0x36t
        0x4dt
        0x73t
        0x4bt
        0x4et
        0x2at
        -0x2ct
        0x52t
        0x26t
        -0x4dt
        0x54t
        0x1et
        0x19t
        0x1ft
        0x22t
        0x3t
        0x46t
        0x3dt
        0x2dt
        0x4at
        0x53t
        -0x7dt
        0x13t
        -0x76t
        -0x49t
        -0x2bt
        0x25t
        0x79t
        -0xbt
        -0x43t
        0x58t
        0x2ft
        0xdt
        0x2t
        -0x13t
        0x51t
        -0x62t
        0x11t
        -0xet
        0x3et
        0x55t
        0x5et
        -0x2ft
        0x16t
        0x3ct
        0x66t
        0x70t
        0x5dt
        -0xdt
        0x45t
        0x40t
        -0x34t
        -0x18t
        -0x6ct
        0x56t
        0x8t
        -0x32t
        0x1at
        0x3at
        -0x2et
        -0x1ft
        -0x21t
        -0x4bt
        0x38t
        0x6et
        0xet
        -0x1bt
        -0xct
        -0x7t
        -0x7at
        -0x17t
        0x4ft
        -0x2at
        -0x7bt
        0x23t
        -0x31t
        0x32t
        -0x67t
        0x31t
        0x14t
        -0x52t
        -0x12t
        -0x38t
        0x48t
        -0x2dt
        0x30t
        -0x5ft
        -0x6et
        0x41t
        -0x4ft
        0x18t
        -0x3ct
        0x2ct
        0x71t
        0x72t
        0x44t
        0x15t
        -0x3t
        0x37t
        -0x42t
        0x5ft
        -0x56t
        -0x65t
        -0x78t
        -0x28t
        -0x55t
        -0x77t
        -0x64t
        -0x6t
        0x60t
        -0x16t
        -0x44t
        0x62t
        0xct
        0x24t
        -0x5at
        -0x58t
        -0x14t
        0x67t
        0x20t
        -0x25t
        0x7ct
        0x28t
        -0x23t
        -0x54t
        0x5bt
        0x34t
        0x7et
        0x10t
        -0xft
        0x7bt
        -0x71t
        0x63t
        -0x60t
        0x5t
        -0x66t
        0x43t
        0x77t
        0x21t
        -0x41t
        0x27t
        0x9t
        -0x3dt
        -0x61t
        -0x4at
        -0x29t
        0x29t
        -0x3et
        -0x15t
        -0x40t
        -0x5ct
        -0x75t
        -0x74t
        0x1dt
        -0x5t
        -0x1t
        -0x3ft
        -0x4et
        -0x69t
        0x2et
        -0x8t
        0x65t
        -0xat
        0x75t
        0x7t
        0x4t
        0x49t
        0x33t
        -0x1ct
        -0x27t
        -0x47t
        -0x30t
        0x42t
        -0x39t
        0x6ct
        -0x70t
        0x0t
        -0x72t
        0x6ft
        0x50t
        0x1t
        -0x3bt
        -0x26t
        0x47t
        0x3ft
        -0x33t
        0x69t
        -0x5et
        -0x1et
        0x7at
        -0x59t
        -0x3at
        -0x6dt
        0xft
        0xat
        0x6t
        -0x1at
        0x2bt
        -0x6at
        -0x5dt
        0x1ct
        -0x51t
        0x6at
        0x12t
        -0x7ct
        0x39t
        -0x19t
        -0x50t
        -0x7et
        -0x9t
        -0x2t
        -0x63t
        -0x79t
        0x5ct
        -0x7ft
        0x35t
        -0x22t
        -0x4ct
        -0x5bt
        -0x4t
        -0x80t
        -0x11t
        -0x35t
        -0x45t
        0x6bt
        0x76t
        -0x46t
        0x5at
        0x7dt
        0x78t
        0xbt
        -0x6bt
        -0x1dt
        -0x53t
        0x74t
        -0x68t
        0x3bt
        0x36t
        0x64t
        0x6dt
        -0x24t
        -0x10t
        0x59t
        -0x57t
        0x4ct
        0x17t
        0x7ft
        -0x6ft
        -0x48t
        -0x37t
        0x57t
        0x1bt
        -0x20t
        0x61t
    .end array-data

    .line 774
    :array_14
    .array-data 1
        -0x5ct
        -0x5et
        -0x57t
        -0x3bt
        0x4et
        -0x37t
        0x3t
        -0x27t
        0x7et
        0xft
        -0x2et
        -0x53t
        -0x19t
        -0x2dt
        0x27t
        0x5bt
        -0x1dt
        -0x5ft
        -0x18t
        -0x1at
        0x7ct
        0x2at
        0x55t
        0xct
        -0x7at
        0x39t
        -0x29t
        -0x73t
        -0x48t
        0x12t
        0x6ft
        0x28t
        -0x33t
        -0x76t
        0x70t
        0x56t
        0x72t
        -0x7t
        -0x41t
        0x4ft
        0x73t
        -0x17t
        -0x9t
        0x57t
        0x16t
        -0x54t
        0x50t
        -0x40t
        -0x63t
        -0x49t
        0x47t
        0x71t
        0x60t
        -0x3ct
        0x74t
        0x43t
        0x6ct
        0x1ft
        -0x6dt
        0x77t
        -0x24t
        -0x32t
        0x20t
        -0x74t
        -0x67t
        0x5ft
        0x44t
        0x1t
        -0xbt
        0x1et
        -0x79t
        0x5et
        0x61t
        0x2ct
        0x4bt
        0x1dt
        -0x7ft
        0x15t
        -0xct
        0x23t
        -0x2at
        -0x16t
        -0x1ft
        0x67t
        -0xft
        0x7ft
        -0x2t
        -0x26t
        0x3ct
        0x7t
        0x53t
        0x6at
        -0x7ct
        -0x64t
        -0x35t
        0x2t
        -0x7dt
        0x33t
        -0x23t
        0x35t
        -0x1et
        0x59t
        0x5at
        -0x68t
        -0x5bt
        -0x6et
        0x64t
        0x4t
        0x6t
        0x10t
        0x4dt
        0x1ct
        -0x69t
        0x8t
        0x31t
        -0x12t
        -0x55t
        0x5t
        -0x51t
        0x79t
        -0x60t
        0x18t
        0x46t
        0x6dt
        -0x4t
        -0x77t
        -0x2ct
        -0x39t
        -0x1t
        -0x10t
        -0x31t
        0x42t
        -0x6ft
        -0x8t
        0x68t
        0xat
        0x65t
        -0x72t
        -0x4at
        -0x3t
        -0x3dt
        -0x11t
        0x78t
        0x4ct
        -0x34t
        -0x62t
        0x30t
        0x2et
        -0x44t
        0xbt
        0x54t
        0x1at
        -0x5at
        -0x45t
        0x26t
        -0x80t
        0x48t
        -0x6ct
        0x32t
        0x7dt
        -0x59t
        0x3ft
        -0x52t
        0x22t
        0x3dt
        0x66t
        -0x56t
        -0xat
        0x0t
        0x5dt
        -0x43t
        0x4at
        -0x20t
        0x3bt
        -0x4ct
        0x17t
        -0x75t
        -0x61t
        0x76t
        -0x50t
        0x24t
        -0x66t
        0x25t
        0x63t
        -0x25t
        -0x15t
        0x7at
        0x3et
        0x5ct
        -0x4dt
        -0x4ft
        0x29t
        -0xet
        -0x36t
        0x58t
        0x6et
        -0x28t
        -0x58t
        0x2ft
        0x75t
        -0x21t
        0x14t
        -0x5t
        0x13t
        0x49t
        -0x78t
        -0x4et
        -0x14t
        -0x1ct
        0x34t
        0x2dt
        -0x6at
        -0x3at
        0x3at
        -0x13t
        -0x6bt
        0xet
        -0x1bt
        -0x7bt
        0x6bt
        0x40t
        0x21t
        -0x65t
        0x9t
        0x19t
        0x2bt
        0x52t
        -0x22t
        0x45t
        -0x5dt
        -0x6t
        0x51t
        -0x3et
        -0x4bt
        -0x2ft
        -0x70t
        -0x47t
        -0xdt
        0x37t
        -0x3ft
        0xdt
        -0x46t
        0x41t
        0x11t
        0x38t
        0x7bt
        -0x42t
        -0x30t
        -0x2bt
        0x69t
        0x36t
        -0x38t
        0x62t
        0x1bt
        -0x7et
        -0x71t
    .end array-data

    :array_15
    .array-data 1
        -0x7dt
        -0xet
        0x2at
        -0x15t
        -0x17t
        -0x41t
        0x7bt
        -0x64t
        0x34t
        -0x6at
        -0x73t
        -0x68t
        -0x47t
        0x69t
        -0x74t
        0x29t
        0x3dt
        -0x78t
        0x68t
        0x6t
        0x39t
        0x11t
        0x4ct
        0xet
        -0x60t
        0x56t
        0x40t
        -0x6et
        0x15t
        -0x44t
        -0x4dt
        -0x24t
        0x6ft
        -0x8t
        0x26t
        -0x46t
        -0x42t
        -0x43t
        0x31t
        -0x5t
        -0x3dt
        -0x2t
        -0x80t
        0x61t
        -0x1ft
        0x7at
        0x32t
        -0x2et
        0x70t
        0x20t
        -0x5ft
        0x45t
        -0x14t
        -0x27t
        0x1at
        0x5dt
        -0x4ct
        -0x28t
        0x9t
        -0x5bt
        0x55t
        -0x72t
        0x37t
        0x76t
        -0x57t
        0x67t
        0x10t
        0x17t
        0x36t
        0x65t
        -0x4ft
        -0x6bt
        0x62t
        0x59t
        0x74t
        -0x5dt
        0x50t
        0x2ft
        0x4bt
        -0x38t
        -0x30t
        -0x71t
        -0x33t
        -0x2ct
        0x3ct
        -0x7at
        0x12t
        0x1dt
        0x23t
        -0x11t
        -0xct
        0x53t
        0x19t
        0x35t
        -0x1at
        0x7ft
        0x5et
        -0x2at
        0x79t
        0x51t
        0x22t
        0x14t
        -0x9t
        0x1et
        0x4at
        0x42t
        -0x65t
        0x41t
        0x73t
        0x2dt
        -0x3ft
        0x5ct
        -0x5at
        -0x5et
        -0x20t
        0x2et
        -0x2dt
        0x28t
        -0x45t
        -0x37t
        -0x52t
        0x6at
        -0x2ft
        0x5at
        0x30t
        -0x70t
        -0x7ct
        -0x7t
        -0x4et
        0x58t
        -0x31t
        0x7et
        -0x3bt
        -0x35t
        -0x69t
        -0x1ct
        0x16t
        0x6ct
        -0x6t
        -0x50t
        0x6dt
        0x1ft
        0x52t
        -0x67t
        0xdt
        0x4et
        0x3t
        -0x6ft
        -0x3et
        0x4dt
        0x64t
        0x77t
        -0x61t
        -0x23t
        -0x3ct
        0x49t
        -0x76t
        -0x66t
        0x24t
        0x38t
        -0x59t
        0x57t
        -0x7bt
        -0x39t
        0x7ct
        0x7dt
        -0x19t
        -0xat
        -0x49t
        -0x54t
        0x27t
        0x46t
        -0x22t
        -0x21t
        0x3bt
        -0x29t
        -0x62t
        0x2bt
        0xbt
        -0x2bt
        0x13t
        0x75t
        -0x10t
        0x72t
        -0x4at
        -0x63t
        0x1bt
        0x1t
        0x3ft
        0x44t
        -0x1bt
        -0x79t
        -0x3t
        0x7t
        -0xft
        -0x55t
        -0x6ct
        0x18t
        -0x16t
        -0x4t
        0x3at
        -0x7et
        0x5ft
        0x5t
        0x54t
        -0x25t
        0x0t
        -0x75t
        -0x1dt
        0x48t
        0xct
        -0x36t
        0x78t
        -0x77t
        0xat
        -0x1t
        0x3et
        0x5bt
        -0x7ft
        -0x12t
        0x71t
        -0x1et
        -0x26t
        0x2ct
        -0x48t
        -0x4bt
        -0x34t
        0x6et
        -0x58t
        0x6bt
        -0x53t
        0x60t
        -0x3at
        0x8t
        0x4t
        0x2t
        -0x18t
        -0xbt
        0x4ft
        -0x5ct
        -0xdt
        -0x40t
        -0x32t
        0x43t
        0x25t
        0x1ct
        0x21t
        0x33t
        0xft
        -0x51t
        0x47t
        -0x13t
        0x66t
        0x63t
        -0x6dt
        -0x56t
    .end array-data

    :array_16
    .array-data 1
        0x45t
        -0x2ct
        0xbt
        0x43t
        -0xft
        0x72t
        -0x13t
        -0x5ct
        -0x3et
        0x38t
        -0x1at
        0x71t
        -0x3t
        -0x4at
        0x3at
        -0x6bt
        0x50t
        0x44t
        0x4bt
        -0x1et
        0x74t
        0x6bt
        0x1et
        0x11t
        0x5at
        -0x3at
        -0x4ct
        -0x28t
        -0x5bt
        -0x76t
        0x70t
        -0x5dt
        -0x58t
        -0x6t
        0x5t
        -0x27t
        -0x69t
        0x40t
        -0x37t
        -0x70t
        -0x68t
        -0x71t
        -0x24t
        0x12t
        0x31t
        0x2ct
        0x47t
        0x6at
        -0x67t
        -0x52t
        -0x38t
        0x7ft
        -0x7t
        0x4ft
        0x5dt
        -0x6at
        0x6ft
        -0xct
        -0x4dt
        0x39t
        0x21t
        -0x26t
        -0x64t
        -0x7bt
        -0x62t
        0x3bt
        -0x10t
        -0x41t
        -0x11t
        0x6t
        -0x12t
        -0x1bt
        0x5ft
        0x20t
        0x10t
        -0x34t
        0x3ct
        0x54t
        0x4at
        0x52t
        -0x6ct
        0xet
        -0x40t
        0x28t
        -0xat
        0x56t
        0x60t
        -0x5et
        -0x1dt
        0xft
        -0x14t
        -0x63t
        0x24t
        -0x7dt
        0x7et
        -0x2bt
        0x7ct
        -0x15t
        0x18t
        -0x29t
        -0x33t
        -0x23t
        0x78t
        -0x1t
        -0x25t
        -0x5ft
        0x9t
        -0x30t
        0x76t
        -0x7ct
        0x75t
        -0x45t
        0x1dt
        0x1at
        0x2ft
        -0x50t
        -0x2t
        -0x2at
        0x34t
        0x63t
        0x35t
        -0x2et
        0x2at
        0x59t
        0x6dt
        0x4dt
        0x77t
        -0x19t
        -0x72t
        0x61t
        -0x31t
        -0x61t
        -0x32t
        0x27t
        -0xbt
        -0x80t
        -0x7at
        -0x39t
        -0x5at
        -0x5t
        -0x8t
        -0x79t
        -0x55t
        0x62t
        0x3ft
        -0x21t
        0x48t
        0x0t
        0x14t
        -0x66t
        -0x43t
        0x5bt
        0x4t
        -0x6et
        0x2t
        0x25t
        0x65t
        0x4ct
        0x53t
        0xct
        -0xet
        0x29t
        -0x51t
        0x17t
        0x6ct
        0x41t
        0x30t
        -0x17t
        -0x6dt
        0x55t
        -0x9t
        -0x54t
        0x68t
        0x26t
        -0x3ct
        0x7dt
        -0x36t
        0x7at
        0x3et
        -0x60t
        0x37t
        0x3t
        -0x3ft
        0x36t
        0x69t
        0x66t
        0x8t
        0x16t
        -0x59t
        -0x44t
        -0x3bt
        -0x2dt
        0x22t
        -0x49t
        0x13t
        0x46t
        0x32t
        -0x18t
        0x57t
        -0x78t
        0x2bt
        -0x7ft
        -0x4et
        0x4et
        0x64t
        0x1ct
        -0x56t
        -0x6ft
        0x58t
        0x2et
        -0x65t
        0x5ct
        0x1bt
        0x51t
        0x73t
        0x42t
        0x23t
        0x1t
        0x6et
        -0xdt
        0xdt
        -0x42t
        0x3dt
        0xat
        0x2dt
        0x1ft
        0x67t
        0x33t
        0x19t
        0x7bt
        0x5et
        -0x16t
        -0x22t
        -0x75t
        -0x35t
        -0x57t
        -0x74t
        -0x73t
        -0x53t
        0x49t
        -0x7et
        -0x1ct
        -0x46t
        -0x3dt
        0x15t
        -0x2ft
        -0x20t
        -0x77t
        -0x4t
        -0x4ft
        -0x47t
        -0x4bt
        0x7t
        0x79t
        -0x48t
        -0x1ft
    .end array-data

    :array_17
    .array-data 1
        -0x4et
        -0x4at
        0x23t
        0x11t
        -0x59t
        -0x78t
        -0x3bt
        -0x5at
        0x39t
        -0x71t
        -0x3ct
        -0x18t
        0x73t
        0x22t
        0x43t
        -0x3dt
        -0x7et
        0x27t
        -0x33t
        0x18t
        0x51t
        0x62t
        0x2dt
        -0x9t
        0x5ct
        0xet
        0x3bt
        -0x3t
        -0x36t
        -0x65t
        0xdt
        0xft
        0x79t
        -0x74t
        0x10t
        0x4ct
        0x74t
        0x1ct
        0xat
        -0x72t
        0x7ct
        -0x6ct
        0x7t
        -0x39t
        0x5et
        0x14t
        -0x5ft
        0x21t
        0x57t
        0x50t
        0x4et
        -0x57t
        -0x80t
        -0x27t
        -0x11t
        0x64t
        0x41t
        -0x31t
        0x3ct
        -0x12t
        0x2et
        0x13t
        0x29t
        -0x46t
        0x34t
        0x5at
        -0x52t
        -0x76t
        0x61t
        0x33t
        0x12t
        -0x47t
        0x55t
        -0x58t
        0x15t
        0x5t
        -0xat
        0x3t
        0x6t
        0x49t
        -0x4bt
        0x25t
        0x9t
        0x16t
        0xct
        0x2at
        0x38t
        -0x4t
        0x20t
        -0xct
        -0x1bt
        0x7ft
        -0x29t
        0x31t
        0x2bt
        0x66t
        0x6ft
        -0x1t
        0x72t
        -0x7at
        -0x10t
        -0x5dt
        0x2ft
        0x78t
        0x0t
        -0x44t
        -0x34t
        -0x1et
        -0x50t
        -0xft
        0x42t
        -0x4ct
        0x30t
        0x5ft
        0x60t
        0x4t
        -0x14t
        -0x5bt
        -0x1dt
        -0x75t
        -0x19t
        0x1dt
        -0x41t
        -0x7ct
        0x7bt
        -0x1at
        -0x7ft
        -0x8t
        -0x22t
        -0x28t
        -0x2et
        0x17t
        -0x32t
        0x4bt
        0x47t
        -0x2at
        0x69t
        0x6ct
        0x19t
        -0x67t
        -0x66t
        0x1t
        -0x4dt
        -0x7bt
        -0x4ft
        -0x7t
        0x59t
        -0x3et
        0x37t
        -0x17t
        -0x38t
        -0x60t
        -0x13t
        0x4ft
        -0x77t
        0x68t
        0x6dt
        -0x2bt
        0x26t
        -0x6ft
        -0x79t
        0x58t
        -0x43t
        -0x37t
        -0x68t
        -0x24t
        0x75t
        -0x40t
        0x76t
        -0xbt
        0x67t
        0x6bt
        0x7et
        -0x15t
        0x52t
        -0x35t
        -0x2ft
        0x5bt
        -0x61t
        0xbt
        -0x25t
        0x40t
        -0x6et
        0x1at
        -0x6t
        -0x54t
        -0x1ct
        -0x1ft
        0x71t
        0x1ft
        0x65t
        -0x73t
        -0x69t
        -0x62t
        -0x6bt
        -0x70t
        0x5dt
        -0x49t
        -0x3ft
        -0x51t
        0x54t
        -0x5t
        0x2t
        -0x20t
        0x35t
        -0x45t
        0x3at
        0x4dt
        -0x53t
        0x2ct
        0x3dt
        0x56t
        0x8t
        0x1bt
        0x4at
        -0x6dt
        0x6at
        -0x55t
        -0x48t
        0x7at
        -0xet
        0x7dt
        -0x26t
        0x3ft
        -0x2t
        0x3et
        -0x42t
        -0x16t
        -0x56t
        0x44t
        -0x3at
        -0x30t
        0x36t
        0x48t
        0x70t
        -0x6at
        0x77t
        0x24t
        0x53t
        -0x21t
        -0xdt
        -0x7dt
        0x28t
        0x32t
        0x45t
        0x1et
        -0x5ct
        -0x2dt
        -0x5et
        0x46t
        0x6et
        -0x64t
        -0x23t
        0x63t
        -0x2ct
        -0x63t
    .end array-data
.end method

.method private InvShiftRows()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 497
    const/4 v2, -0x1

    .line 499
    .local v2, "shift":I
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    invoke-static {v3, v4, v8}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 501
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    if-ge v1, v9, :cond_2

    .line 503
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    div-int v3, v9, v3

    rem-int v3, v1, v3

    if-nez v3, :cond_0

    .line 505
    add-int/lit8 v2, v2, 0x1

    .line 507
    :cond_0
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v3, :cond_1

    .line 509
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->tempInternalStateBytes:[B

    mul-int/lit8 v4, v0, 0x40

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    add-int v6, v0, v2

    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    rem-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x40

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 501
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "col":I
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->tempInternalStateBytes:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {v3, v8, v4}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 514
    return-void
.end method

.method private InvSubBytes()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    .line 461
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v2, v2, v10

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v3, v4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v4, v4, v11

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    ushr-long/2addr v6, v14

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    shl-long/2addr v4, v14

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v4, v4, v12

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    const/16 v5, 0x10

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v4, v4, v13

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    const/16 v5, 0x18

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v4, v4, v10

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide v8, 0xff00000000L

    and-long/2addr v6, v8

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v4, v4, v11

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide v8, 0xff0000000000L

    and-long/2addr v6, v8

    const/16 v5, 0x28

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v4, v4, v12

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/high16 v8, 0xff000000000000L

    and-long/2addr v6, v8

    const/16 v5, 0x30

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForDecryption:[[B

    aget-object v4, v4, v13

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/high16 v8, -0x100000000000000L

    and-long/2addr v6, v8

    const/16 v5, 0x38

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 470
    :cond_0
    return-void
.end method

.method private MixColumns([[B)V
    .locals 11
    .param p1, "matrix"    # [[B

    .prologue
    .line 522
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 525
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_0
    iget v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v8, :cond_2

    .line 527
    const-wide/16 v4, 0x0

    .line 528
    .local v4, "result":J
    const-wide/high16 v6, -0x100000000000000L

    .line 530
    .local v6, "shift":J
    const/4 v3, 0x7

    .local v3, "row":I
    :goto_1
    if-ltz v3, :cond_1

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "product":B
    const/4 v0, 0x7

    .local v0, "b":I
    :goto_2
    if-ltz v0, :cond_0

    .line 535
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    mul-int/lit8 v9, v1, 0x40

    div-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v0

    aget-byte v8, v8, v9

    aget-object v9, p1, v3

    aget-byte v9, v9, v0

    invoke-direct {p0, v8, v9}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MultiplyGF(BB)B

    move-result v8

    xor-int/2addr v8, v2

    int-to-byte v2, v8

    .line 533
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 538
    :cond_0
    int-to-long v8, v2

    mul-int/lit8 v10, v3, 0x40

    div-int/lit8 v10, v10, 0x8

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    or-long/2addr v4, v8

    .line 539
    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    .line 530
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 543
    .end local v0    # "b":I
    .end local v2    # "product":B
    :cond_1
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v4, v8, v1

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v3    # "row":I
    .end local v4    # "result":J
    .end local v6    # "shift":J
    :cond_2
    return-void
.end method

.method private MultiplyGF(BB)B
    .locals 7
    .param p1, "x"    # B
    .param p2, "y"    # B

    .prologue
    .line 549
    and-int/lit16 v3, p1, 0xff

    .local v3, "u":I
    and-int/lit16 v4, p2, 0xff

    .line 550
    .local v4, "v":I
    and-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    and-int v2, v3, v5

    .line 552
    .local v2, "r":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_0

    .line 554
    shl-int/lit8 v3, v3, 0x1

    .line 555
    ushr-int/lit8 v4, v4, 0x1

    .line 556
    and-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    and-int/2addr v5, v3

    xor-int/2addr v2, v5

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    :cond_0
    const v5, 0xff00

    and-int v0, v2, v5

    .line 560
    .local v0, "hi":I
    ushr-int/lit8 v5, v0, 0x4

    xor-int/2addr v5, v0

    ushr-int/lit8 v6, v0, 0x5

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v0, 0x6

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v0, 0x8

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 561
    and-int/lit16 v0, v2, 0xf00

    .line 562
    ushr-int/lit8 v5, v0, 0x4

    xor-int/2addr v5, v0

    ushr-int/lit8 v6, v0, 0x5

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v0, 0x6

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v0, 0x8

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 564
    int-to-byte v5, v2

    return v5
.end method

.method private RotateLeft([J)V
    .locals 6
    .param p1, "value"    # [J

    .prologue
    const/4 v5, 0x0

    .line 584
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x3

    .line 585
    .local v3, "rotateBytesLength":I
    array-length v4, p1

    mul-int/lit8 v2, v4, 0x8

    .line 587
    .local v2, "bytesLength":I
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x40

    div-int/lit8 v4, v4, 0x8

    new-array v1, v4, [B

    .line 588
    .local v1, "bytes":[B
    invoke-static {p1, v1, v5}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 590
    new-array v0, v3, [B

    .line 591
    .local v0, "buffer":[B
    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    sub-int v4, v2, v3

    invoke-static {v1, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    sub-int v4, v2, v3

    invoke-static {v0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    invoke-static {v1, v5, p1}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 596
    return-void
.end method

.method private ShiftLeft([J)V
    .locals 6
    .param p1, "value"    # [J

    .prologue
    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 571
    aget-wide v4, p1, v0

    const/4 v1, 0x1

    shl-long/2addr v4, v1

    aput-wide v4, p1, v0

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 576
    aget-wide v2, p1, v0

    .line 577
    .local v2, "temp":J
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v4, p1, v1

    aput-wide v4, p1, v0

    .line 578
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide v2, p1, v1

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    .end local v2    # "temp":J
    :cond_1
    return-void
.end method

.method private ShiftRows()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 475
    const/4 v2, -0x1

    .line 477
    .local v2, "shift":I
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    invoke-static {v3, v4, v7}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 479
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 481
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    div-int v3, v8, v3

    rem-int v3, v1, v3

    if-nez v3, :cond_0

    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 485
    :cond_0
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v3, :cond_1

    .line 487
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->tempInternalStateBytes:[B

    add-int v4, v0, v2

    iget v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    rem-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x40

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    mul-int/lit8 v6, v0, 0x40

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "col":I
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->tempInternalStateBytes:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {v3, v7, v4}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 492
    return-void
.end method

.method private SubBytes()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    .line 446
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v2, v2, v10

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v3, v4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v4, v4, v11

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    ushr-long/2addr v6, v14

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    shl-long/2addr v4, v14

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v4, v4, v12

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    const/16 v5, 0x10

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v4, v4, v13

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    const/16 v5, 0x18

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v4, v4, v10

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide v8, 0xff00000000L

    and-long/2addr v6, v8

    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v4, v4, v11

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide v8, 0xff0000000000L

    and-long/2addr v6, v8

    const/16 v5, 0x28

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v4, v4, v12

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/high16 v8, 0xff000000000000L

    and-long/2addr v6, v8

    const/16 v5, 0x30

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->sboxesForEncryption:[[B

    aget-object v4, v4, v13

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v5, v0

    const-wide/high16 v8, -0x100000000000000L

    and-long/2addr v6, v8

    const/16 v5, 0x38

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method private workingKeyExpandEven([J[J)V
    .locals 13
    .param p1, "workingKey"    # [J
    .param p2, "tempKey"    # [J

    .prologue
    const/4 v12, 0x0

    .line 323
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    new-array v0, v7, [J

    .line 324
    .local v0, "initialData":[J
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v4, v7, [J

    .line 325
    .local v4, "tempRoundKey":[J
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v5, v7, [J

    .line 327
    .local v5, "tmv":[J
    const/4 v1, 0x0

    .line 329
    .local v1, "round":I
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    invoke-static {p1, v12, v0, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    const/4 v6, 0x0

    .local v6, "wordIndex":I
    :goto_0
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_1

    .line 333
    const-wide v8, 0x1000100010001L

    aput-wide v8, v5, v6

    .line 331
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 423
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftLeft([J)V

    .line 425
    aget-wide v2, v0, v12

    .line 426
    .local v2, "temp":J
    const/4 v7, 0x1

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v7, v0, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aput-wide v2, v0, v7

    .line 338
    .end local v2    # "temp":J
    :cond_1
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p2, v12, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_2

    .line 342
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v5, v6

    add-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 340
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 345
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v7, v12, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v0, v12, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    const/4 v6, 0x0

    :goto_2
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_3

    .line 350
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v4, v6

    add-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 348
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 353
    :cond_3
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 354
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 355
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 357
    const/4 v6, 0x0

    :goto_3
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_4

    .line 359
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v4, v6

    xor-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 357
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 362
    :cond_4
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 363
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 364
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 366
    const/4 v6, 0x0

    :goto_4
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_5

    .line 368
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v4, v6

    add-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 366
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 371
    :cond_5
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v8, v8, v1

    iget v9, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v7, v12, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v7, v1, :cond_6

    .line 430
    :goto_5
    return-void

    .line 377
    :cond_6
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    if-eq v7, v8, :cond_0

    .line 379
    add-int/lit8 v1, v1, 0x2

    .line 380
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftLeft([J)V

    .line 381
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p2, v12, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    const/4 v6, 0x0

    :goto_6
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_7

    .line 385
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v5, v6

    add-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 383
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 388
    :cond_7
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v7, v12, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v9, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v0, v7, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    const/4 v6, 0x0

    :goto_7
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_8

    .line 393
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v4, v6

    add-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 391
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 396
    :cond_8
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 397
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 398
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 400
    const/4 v6, 0x0

    :goto_8
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_9

    .line 402
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v4, v6

    xor-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 400
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 405
    :cond_9
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 406
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 407
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 409
    const/4 v6, 0x0

    :goto_9
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v6, v7, :cond_a

    .line 411
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v6

    aget-wide v10, v4, v6

    add-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 409
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 414
    :cond_a
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v8, v8, v1

    iget v9, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v7, v12, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v7, v1, :cond_0

    goto/16 :goto_5
.end method

.method private workingKeyExpandKT([J[J)V
    .locals 9
    .param p1, "workingKey"    # [J
    .param p2, "tempKeys"    # [J

    .prologue
    const/4 v8, 0x0

    .line 273
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v0, v3, [J

    .line 274
    .local v0, "k0":[J
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v1, v3, [J

    .line 276
    .local v1, "k1":[J
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v3, v3, [J

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    .line 277
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v3, v8

    iget v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v7, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v8

    .line 279
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    if-ne v3, v4, :cond_0

    .line 281
    array-length v3, v0

    invoke-static {p1, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v3, v1

    invoke-static {p1, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    :goto_0
    const/4 v2, 0x0

    .local v2, "wordIndex":I
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 293
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v3, v2

    aget-wide v6, v0, v2

    add-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    .end local v2    # "wordIndex":I
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p1, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p1, v3, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 296
    .restart local v2    # "wordIndex":I
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 297
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 298
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 300
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 302
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v3, v2

    aget-wide v6, v1, v2

    xor-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 305
    :cond_2
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 306
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 307
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 309
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 311
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v3, v2

    aget-wide v6, v0, v2

    add-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 314
    :cond_3
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 315
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 316
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 318
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v4, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v3, v8, p2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    return-void
.end method

.method private workingKeyExpandOdd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 434
    const/4 v0, 0x1

    .local v0, "roundIndex":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v2, v2, v0

    iget v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->RotateLeft([J)V

    .line 434
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "DSTU7624"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    mul-int/lit8 v0, v0, 0x40

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 9
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x200

    .line 71
    instance-of v5, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v5, :cond_6

    .line 73
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->forEncryption:Z

    .line 75
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    .line 76
    .local v2, "keyBytes":[B
    array-length v5, v2

    mul-int/lit8 v1, v5, 0x8

    .line 77
    .local v1, "keyBitLength":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    mul-int/lit8 v0, v5, 0x40

    .line 79
    .local v0, "blockBitLength":I
    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    if-eq v1, v6, :cond_0

    .line 81
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "unsupported key length: only 128/256/512 are allowed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_0
    if-ne v0, v7, :cond_1

    .line 87
    if-ne v1, v6, :cond_1

    .line 89
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported key length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_1
    if-ne v0, v8, :cond_2

    .line 95
    if-ne v1, v7, :cond_2

    .line 97
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported key length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_2
    if-ne v0, v6, :cond_3

    .line 103
    if-eq v1, v6, :cond_3

    .line 105
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported key length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    :cond_3
    sparse-switch v1, :sswitch_data_0

    .line 122
    :goto_0
    div-int/lit8 v5, v1, 0x40

    iput v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    .line 125
    iget v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [[J

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    .line 126
    const/4 v3, 0x0

    .local v3, "roundKeyIndex":I
    :goto_1
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 128
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v6, v6, [J

    aput-object v6, v5, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v3    # "roundKeyIndex":I
    :sswitch_0
    const/16 v5, 0xa

    iput v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    goto :goto_0

    .line 115
    :sswitch_1
    const/16 v5, 0xe

    iput v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    goto :goto_0

    .line 118
    :sswitch_2
    const/16 v5, 0x12

    iput v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    goto :goto_0

    .line 131
    .restart local v3    # "roundKeyIndex":I
    :cond_4
    iget v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    .line 133
    array-length v5, v2

    iget v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    mul-int/lit8 v6, v6, 0x40

    div-int/lit8 v6, v6, 0x8

    if-eq v5, v6, :cond_5

    .line 135
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid key parameter passed to DSTU7624Engine init"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_5
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-static {v2, v5, v6}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 141
    iget v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v4, v5, [J

    .line 144
    .local v4, "tempKeys":[J
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-direct {p0, v5, v4}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandKT([J[J)V

    .line 145
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-direct {p0, v5, v4}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandEven([J[J)V

    .line 146
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandOdd()V

    .line 152
    return-void

    .line 150
    .end local v0    # "blockBitLength":I
    .end local v1    # "keyBitLength":I
    .end local v2    # "keyBytes":[B
    .end local v3    # "roundKeyIndex":I
    .end local v4    # "tempKeys":[J
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid parameter passed to DSTU7624Engine init"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method public processBlock([BI[BI)I
    .locals 8
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
    .line 167
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    if-nez v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DSTU7624 engine not initialised"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v2

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 174
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "Input buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v2

    add-int/2addr v2, p4

    array-length v3, p3

    if-le v2, v3, :cond_2

    .line 179
    new-instance v2, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v3, "Output buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_2
    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->forEncryption:Z

    if-eqz v2, :cond_7

    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, "round":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p2, v2}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 191
    const/4 v1, 0x0

    .local v1, "wordIndex":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_3

    .line 193
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ge v0, v2, :cond_5

    .line 198
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 199
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 200
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 202
    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_4

    .line 204
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_5
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->SubBytes()V

    .line 209
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->ShiftRows()V

    .line 210
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsMatrix:[[B

    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 212
    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_6

    .line 214
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v6, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    aget-object v3, v3, v6

    aget-wide v6, v3, v1

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 219
    :cond_6
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {v2, p3, p4}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 260
    :goto_4
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v2

    return v2

    .line 224
    .end local v0    # "round":I
    .end local v1    # "wordIndex":I
    :cond_7
    iget v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    .line 227
    .restart local v0    # "round":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p2, v2}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 230
    const/4 v1, 0x0

    .restart local v1    # "wordIndex":I
    :goto_5
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_8

    .line 232
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    sub-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 235
    :cond_8
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    add-int/lit8 v0, v2, -0x1

    :goto_6
    if-lez v0, :cond_a

    .line 237
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsInvMatrix:[[B

    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 238
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->InvShiftRows()V

    .line 239
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->InvSubBytes()V

    .line 241
    const/4 v1, 0x0

    :goto_7
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_9

    .line 243
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v3, v3, v0

    aget-wide v6, v3, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 235
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 246
    :cond_a
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->mdsInvMatrix:[[B

    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->MixColumns([[B)V

    .line 247
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->InvShiftRows()V

    .line 248
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->InvSubBytes()V

    .line 250
    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v1, v2, :cond_b

    .line 252
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v4, v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    const/4 v6, 0x0

    aget-object v3, v3, v6

    aget-wide v6, v3, v1

    sub-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 256
    :cond_b
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {v2, p3, p4}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    goto :goto_4
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 266
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->internalStateBytes:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->tempInternalStateBytes:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 268
    return-void
.end method
