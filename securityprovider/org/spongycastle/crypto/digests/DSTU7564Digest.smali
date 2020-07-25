.class public Lorg/spongycastle/crypto/digests/DSTU7564Digest;
.super Ljava/lang/Object;
.source "DSTU7564Digest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8

.field private static final NB_1024:I = 0x10

.field private static final NB_512:I = 0x8

.field private static final NR_1024:I = 0xe

.field private static final NR_512:I = 0xa

.field private static final REDUCTIONAL_POLYNOMIAL:I = 0x11d

.field private static final ROWS:I = 0x8

.field private static final STATE_BYTES_SIZE_1024:I = 0x80

.field private static final STATE_BYTES_SIZE_512:I = 0x40

.field private static final mds_matrix:[[B

.field private static final sBoxes:[[B


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private columns:I

.field private hashSize:I

.field private inputLength:J

.field private mixColumnsResult:[B

.field private padded:[B

.field private rounds:I

.field private state:[[B

.field private tempBuffer:[B

.field private tempLongBuffer:[J

.field private tempState1:[[B

.field private tempState2:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x100

    const/16 v3, 0x8

    .line 549
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

    sput-object v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    .line 560
    const/4 v0, 0x4

    new-array v0, v0, [[B

    new-array v1, v4, [B

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v4, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v4, [B

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v4, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    return-void

    .line 549
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

    .line 560
    :array_8
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

    :array_9
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

    :array_a
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

    :array_b
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
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "hashSizeBits"    # I

    .prologue
    const/16 v2, 0x40

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/16 v4, 0x80

    const/16 v3, 0x8

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v1, 0x100

    if-eq p1, v1, :cond_0

    const/16 v1, 0x180

    if-eq p1, v1, :cond_0

    const/16 v1, 0x200

    if-ne p1, v1, :cond_1

    .line 90
    :cond_0
    div-int/lit8 v1, p1, 0x8

    iput v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    .line 97
    const/16 v1, 0x100

    if-le p1, v1, :cond_2

    .line 99
    iput v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 100
    iput v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    .line 101
    const/16 v1, 0xe

    iput v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 102
    new-array v1, v4, [[B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    .line 111
    :goto_0
    const/4 v0, 0x0

    .local v0, "bufferIndex":I
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 113
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "bufferIndex":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hash size is not recommended. Use 256/384/512 instead"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_2
    iput v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 107
    iput v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    .line 108
    const/16 v1, 0xa

    iput v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 109
    new-array v1, v2, [[B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    goto :goto_0

    .line 116
    .restart local v0    # "bufferIndex":I
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    .line 119
    new-array v1, v4, [[B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    .line 120
    new-array v1, v4, [[B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    .line 122
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 124
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    new-array v2, v3, [B

    aput-object v2, v1, v0

    .line 125
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    new-array v2, v3, [B

    aput-object v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :cond_4
    new-array v1, v6, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    .line 129
    new-array v1, v3, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    .line 130
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    .line 131
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V

    .line 60
    return-void
.end method

.method private P()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 434
    const/4 v2, 0x0

    .local v2, "roundIndex":I
    :goto_0
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v2, v6, :cond_b

    .line 438
    const/4 v0, 0x0

    .local v0, "columnIndex":I
    :goto_1
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v6, :cond_0

    .line 441
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v0

    aget-byte v7, v6, v10

    mul-int/lit8 v8, v0, 0x10

    xor-int/2addr v8, v2

    int-to-byte v8, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 445
    :cond_0
    const/4 v3, 0x0

    .local v3, "rowIndex":I
    :goto_2
    if-ge v3, v9, :cond_2

    .line 447
    const/4 v0, 0x0

    :goto_3
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v6, :cond_1

    .line 449
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v0

    sget-object v7, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    rem-int/lit8 v8, v3, 0x4

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v8, v8, v0

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 445
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 453
    :cond_2
    const/4 v5, -0x1

    .line 454
    .local v5, "shift":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v9, :cond_6

    .line 456
    const/4 v6, 0x7

    if-ne v3, v6, :cond_3

    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_3

    .line 458
    const/16 v5, 0xb

    .line 465
    :goto_5
    const/4 v0, 0x0

    :goto_6
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v6, :cond_4

    .line 467
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    add-int v7, v0, v5

    iget v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    rem-int/2addr v7, v8

    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v8, v8, v0

    aget-byte v8, v8, v3

    aput-byte v8, v6, v7

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 462
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 469
    :cond_4
    const/4 v0, 0x0

    :goto_7
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v6, :cond_5

    .line 471
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    aget-byte v7, v7, v0

    aput-byte v7, v6, v3

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 454
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 478
    :cond_6
    const/4 v0, 0x0

    :goto_8
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v6, :cond_a

    .line 481
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    invoke-static {v6, v10}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 482
    const/4 v3, 0x7

    :goto_9
    if-ltz v3, :cond_8

    .line 485
    const/4 v1, 0x0

    .line 486
    .local v1, "multiplicationResult":B
    const/4 v4, 0x7

    .local v4, "rowInternalIndex":I
    :goto_a
    if-ltz v4, :cond_7

    .line 488
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v0

    aget-byte v6, v6, v4

    sget-object v7, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    aget-object v7, v7, v3

    aget-byte v7, v7, v4

    invoke-direct {p0, v6, v7}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->multiplyGF(BB)B

    move-result v6

    xor-int/2addr v6, v1

    int-to-byte v1, v6

    .line 486
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 491
    :cond_7
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aput-byte v1, v6, v3

    .line 482
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 493
    .end local v1    # "multiplicationResult":B
    .end local v4    # "rowInternalIndex":I
    :cond_8
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v9, :cond_9

    .line 495
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aget-byte v7, v7, v3

    aput-byte v7, v6, v3

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 478
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 434
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 499
    .end local v0    # "columnIndex":I
    .end local v3    # "rowIndex":I
    .end local v5    # "shift":I
    :cond_b
    return-void
.end method

.method private Q()V
    .locals 18

    .prologue
    .line 360
    const/4 v4, 0x0

    .local v4, "roundIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v4, v8, :cond_b

    .line 364
    const/4 v2, 0x0

    .local v2, "columnIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v8, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v9, v9, v2

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    aput-wide v10, v8, v2

    .line 368
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    aget-wide v10, v8, v2

    const-wide v12, 0xf0f0f0f0f0f0f3L    # 3.860005775059271E-304

    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    sub-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    int-to-long v14, v9

    const-wide/16 v16, 0x10

    mul-long v14, v14, v16

    int-to-long v0, v4

    move-wide/from16 v16, v0

    xor-long v14, v14, v16

    const/16 v9, 0x38

    shl-long/2addr v14, v9

    xor-long/2addr v12, v14

    add-long/2addr v10, v12

    aput-wide v10, v8, v2

    .line 370
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v10, v10, v2

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 374
    :cond_0
    const/4 v5, 0x0

    .local v5, "rowIndex":I
    :goto_2
    const/16 v8, 0x8

    if-ge v5, v8, :cond_2

    .line 376
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v8, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v8, v8, v2

    sget-object v9, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    rem-int/lit8 v10, v5, 0x4

    aget-object v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v10, v10, v2

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    aput-byte v9, v8, v5

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 374
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 383
    :cond_2
    const/4 v7, -0x1

    .line 384
    .local v7, "shift":I
    const/4 v5, 0x0

    :goto_4
    const/16 v8, 0x8

    if-ge v5, v8, :cond_6

    .line 386
    const/4 v8, 0x7

    if-ne v5, v8, :cond_3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_3

    .line 388
    const/16 v7, 0xb

    .line 395
    :goto_5
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v8, :cond_4

    .line 397
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    add-int v9, v2, v7

    move-object/from16 v0, p0

    iget v10, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    rem-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v10, v10, v2

    aget-byte v10, v10, v5

    aput-byte v10, v8, v9

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 392
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 399
    :cond_4
    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v8, :cond_5

    .line 401
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v8, v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    aget-byte v9, v9, v2

    aput-byte v9, v8, v5

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 384
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 408
    :cond_6
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v8, :cond_a

    .line 411
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 412
    const/4 v5, 0x7

    :goto_9
    if-ltz v5, :cond_8

    .line 415
    const/4 v3, 0x0

    .line 416
    .local v3, "multiplicationResult":B
    const/4 v6, 0x7

    .local v6, "rowInternalIndex":I
    :goto_a
    if-ltz v6, :cond_7

    .line 418
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v8, v8, v2

    aget-byte v8, v8, v6

    sget-object v9, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    aget-object v9, v9, v5

    aget-byte v9, v9, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->multiplyGF(BB)B

    move-result v8

    xor-int/2addr v8, v3

    int-to-byte v3, v8

    .line 416
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 421
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aput-byte v3, v8, v5

    .line 412
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 423
    .end local v3    # "multiplicationResult":B
    .end local v6    # "rowInternalIndex":I
    :cond_8
    const/4 v5, 0x0

    :goto_b
    const/16 v8, 0x8

    if-ge v5, v8, :cond_9

    .line 425
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v8, v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aget-byte v9, v9, v5

    aput-byte v9, v8, v5

    .line 423
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 408
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 360
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 430
    .end local v2    # "columnIndex":I
    .end local v5    # "rowIndex":I
    .end local v7    # "shift":I
    :cond_b
    return-void
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    .prologue
    .line 64
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    .line 65
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 67
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    .line 68
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 70
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    .line 71
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    .line 73
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    .line 74
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    .line 76
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    .line 77
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    .line 79
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    .line 81
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    .line 82
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 83
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    .line 84
    return-void
.end method

.method private multiplyGF(BB)B
    .locals 5
    .param p1, "x"    # B
    .param p2, "y"    # B

    .prologue
    .line 504
    const/4 v2, 0x0

    .line 506
    .local v2, "result":B
    const/4 v0, 0x0

    .local v0, "bitIndex":I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    .line 508
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 510
    xor-int v3, v2, p1

    int-to-byte v2, v3

    .line 513
    :cond_0
    and-int/lit8 v3, p1, -0x80

    int-to-byte v1, v3

    .line 515
    .local v1, "highestBit":B
    shl-int/lit8 v3, p1, 0x1

    int-to-byte p1, v3

    .line 517
    const/16 v3, -0x80

    if-ne v1, v3, :cond_1

    .line 519
    xor-int/lit16 v3, p1, 0x11d

    int-to-byte p1, v3

    .line 522
    :cond_1
    shr-int/lit8 v3, p2, 0x1

    int-to-byte p2, v3

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "highestBit":B
    :cond_2
    return v2
.end method

.method private pad([BII)[B
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 530
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    sub-int/2addr v1, p3

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 532
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 539
    .local v0, "padded":[B
    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    const/16 v1, -0x80

    aput-byte v1, v0, p3

    .line 543
    iget-wide v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    array-length v1, v0

    add-int/lit8 v1, v1, -0xc

    invoke-static {v2, v3, v0, v1}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 545
    return-object v0

    .line 536
    .end local v0    # "padded":[B
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    new-array v0, v1, [B

    .restart local v0    # "padded":[B
    goto :goto_0
.end method

.method private processBlock([BI)V
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inOff"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 331
    const/4 v0, 0x0

    .local v0, "bufferIndex":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 333
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v2, v2, v0

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 334
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v2, v2, v0

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    .line 339
    const/4 v1, 0x0

    .local v1, "byteIndex":I
    :goto_2
    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v1, v2, :cond_1

    .line 341
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v0

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    add-int/2addr v4, p2

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 342
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v0

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 337
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "byteIndex":I
    :cond_2
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->P()V

    .line 347
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->Q()V

    .line 349
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_4

    .line 351
    const/4 v1, 0x0

    .restart local v1    # "byteIndex":I
    :goto_4
    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v1, v2, :cond_3

    .line 353
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v2, v2, v1

    aget-byte v3, v2, v0

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v0

    iget-object v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v5, v5, v1

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 349
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 356
    .end local v1    # "byteIndex":I
    :cond_4
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 638
    new-instance v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;-><init>(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 19
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->pad([BII)[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    array-length v5, v14

    .line 191
    .local v5, "paddedLen":I
    const/4 v6, 0x0

    .line 193
    .local v6, "paddedOff":I
    :goto_0
    if-eqz v5, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 196
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/2addr v6, v14

    .line 197
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    sub-int/2addr v5, v14

    goto :goto_0

    .line 200
    :cond_0
    const/16 v14, 0x80

    new-array v13, v14, [[B

    .line 202
    .local v13, "temp":[[B
    const/4 v2, 0x0

    .local v2, "bufferIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v14, v14

    if-ge v2, v14, :cond_1

    .line 205
    const/16 v14, 0x8

    new-array v14, v14, [B

    aput-object v14, v13, v2

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v14, v14, v2

    const/4 v15, 0x0

    aget-object v16, v13, v2

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    :cond_1
    const/4 v7, 0x0

    .local v7, "roundIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v7, v14, :cond_d

    .line 220
    const/4 v3, 0x0

    .local v3, "columnIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v14, :cond_2

    .line 222
    aget-object v14, v13, v3

    const/4 v15, 0x0

    aget-byte v16, v14, v15

    mul-int/lit8 v17, v3, 0x10

    xor-int v17, v17, v7

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 226
    :cond_2
    const/4 v8, 0x0

    .local v8, "rowIndex":I
    :goto_4
    const/16 v14, 0x8

    if-ge v8, v14, :cond_4

    .line 228
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v14, :cond_3

    .line 230
    aget-object v14, v13, v3

    sget-object v15, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    rem-int/lit8 v16, v8, 0x4

    aget-object v15, v15, v16

    aget-object v16, v13, v3

    aget-byte v16, v16, v8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aput-byte v15, v14, v8

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 226
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 234
    :cond_4
    const/4 v10, -0x1

    .line 235
    .local v10, "shift":I
    const/4 v8, 0x0

    :goto_6
    const/16 v14, 0x8

    if-ge v8, v14, :cond_8

    .line 237
    const/4 v14, 0x7

    if-ne v8, v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_5

    .line 239
    const/16 v10, 0xb

    .line 246
    :goto_7
    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v14, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    add-int v15, v3, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    move/from16 v16, v0

    rem-int v15, v15, v16

    aget-object v16, v13, v3

    aget-byte v16, v16, v8

    aput-byte v16, v14, v15

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 243
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 250
    :cond_6
    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v14, :cond_7

    .line 252
    aget-object v14, v13, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    aget-byte v15, v15, v3

    aput-byte v15, v14, v8

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 235
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 259
    :cond_8
    const/4 v3, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v14, :cond_c

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 263
    const/4 v8, 0x7

    :goto_b
    if-ltz v8, :cond_a

    .line 266
    const/4 v4, 0x0

    .line 267
    .local v4, "multiplicationResult":B
    const/4 v9, 0x7

    .local v9, "rowInternalIndex":I
    :goto_c
    if-ltz v9, :cond_9

    .line 269
    aget-object v14, v13, v3

    aget-byte v14, v14, v9

    sget-object v15, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    aget-object v15, v15, v8

    aget-byte v15, v15, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->multiplyGF(BB)B

    move-result v14

    xor-int/2addr v14, v4

    int-to-byte v4, v14

    .line 267
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 272
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aput-byte v4, v14, v8

    .line 263
    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    .line 274
    .end local v4    # "multiplicationResult":B
    .end local v9    # "rowInternalIndex":I
    :cond_a
    const/4 v8, 0x0

    :goto_d
    const/16 v14, 0x8

    if-ge v8, v14, :cond_b

    .line 276
    aget-object v14, v13, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aget-byte v15, v15, v8

    aput-byte v15, v14, v8

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 259
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 216
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 281
    .end local v3    # "columnIndex":I
    .end local v8    # "rowIndex":I
    .end local v10    # "shift":I
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "rowIndex":I
    :goto_e
    const/16 v14, 0x8

    if-ge v8, v14, :cond_f

    .line 283
    const/4 v3, 0x0

    .restart local v3    # "columnIndex":I
    :goto_f
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v14, :cond_e

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v14, v14, v3

    aget-byte v15, v14, v8

    aget-object v16, v13, v3

    aget-byte v16, v16, v8

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v14, v8

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 281
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 289
    .end local v3    # "columnIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    mul-int/lit8 v14, v14, 0x8

    new-array v11, v14, [B

    .line 290
    .local v11, "stateBuffer":[B
    const/4 v12, 0x0

    .line 292
    .local v12, "stateLineIndex":I
    const/4 v3, 0x0

    .restart local v3    # "columnIndex":I
    :goto_10
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v14, :cond_11

    .line 294
    const/4 v8, 0x0

    :goto_11
    const/16 v14, 0x8

    if-ge v8, v14, :cond_10

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v14, v14, v3

    aget-byte v14, v14, v8

    aput-byte v14, v11, v12

    .line 298
    add-int/lit8 v12, v12, 0x1

    .line 294
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 292
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 302
    :cond_11
    array-length v14, v11

    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v11, v14, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->reset()V

    .line 306
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return v14
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "DSTU7564"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 311
    const/4 v0, 0x0

    .local v0, "bufferIndex":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v1, v1, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 318
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    .line 319
    iput v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 321
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 323
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 327
    :cond_1
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 643
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    .line 645
    .local v0, "d":Lorg/spongycastle/crypto/digests/DSTU7564Digest;
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V

    .line 646
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte p1, v0, v1

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 155
    iput v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 157
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    .line 158
    return-void
.end method

.method public update([BII)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 162
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    if-eqz v1, :cond_0

    if-lez p3, :cond_0

    .line 164
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "inOff":I
    .local v0, "inOff":I
    aget-byte v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update(B)V

    .line 165
    add-int/lit8 p3, p3, -0x1

    move p2, v0

    .end local v0    # "inOff":I
    .restart local p2    # "inOff":I
    goto :goto_0

    .line 168
    :cond_0
    if-lez p3, :cond_2

    .line 170
    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-le p3, v1, :cond_3

    .line 172
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 173
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/2addr p2, v1

    .line 174
    iget-wide v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    .line 175
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    sub-int/2addr p3, v1

    goto :goto_1

    .line 178
    .end local p2    # "inOff":I
    .restart local v0    # "inOff":I
    :goto_2
    if-lez p3, :cond_1

    .line 180
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p2    # "inOff":I
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update(B)V

    .line 181
    add-int/lit8 p3, p3, -0x1

    move v0, p2

    .end local p2    # "inOff":I
    .restart local v0    # "inOff":I
    goto :goto_2

    :cond_1
    move p2, v0

    .line 184
    .end local v0    # "inOff":I
    .restart local p2    # "inOff":I
    :cond_2
    return-void

    :cond_3
    move v0, p2

    .end local p2    # "inOff":I
    .restart local v0    # "inOff":I
    goto :goto_2
.end method
