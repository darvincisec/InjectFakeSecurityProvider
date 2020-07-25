.class public Lorg/spongycastle/crypto/engines/ARIAEngine;
.super Ljava/lang/Object;
.source "ARIAEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field private static final C:[[B

.field private static final SB1_sbox:[B

.field private static final SB2_sbox:[B

.field private static final SB3_sbox:[B

.field private static final SB4_sbox:[B


# instance fields
.field private roundKeys:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string v2, "517cc1b727220a94fe13abe8fa9a6ee0"

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "6db14acc9e21c820ff28b1d5ef5de2b0"

    .line 19
    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "db92371d2126e9700324977504e8c90e"

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    .line 21
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    .line 51
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    .line 81
    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    .line 111
    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    return-void

    .line 21
    nop

    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    .line 51
    :array_1
    .array-data 1
        -0x1et
        0x4et
        0x54t
        -0x4t
        -0x6ct
        -0x3et
        0x4at
        -0x34t
        0x62t
        0xdt
        0x6at
        0x46t
        0x3ct
        0x4dt
        -0x75t
        -0x2ft
        0x5et
        -0x6t
        0x64t
        -0x35t
        -0x4ct
        -0x69t
        -0x42t
        0x2bt
        -0x44t
        0x77t
        0x2et
        0x3t
        -0x2dt
        0x19t
        0x59t
        -0x3ft
        0x1dt
        0x6t
        0x41t
        0x6bt
        0x55t
        -0x10t
        -0x67t
        0x69t
        -0x16t
        -0x64t
        0x18t
        -0x52t
        0x63t
        -0x21t
        -0x19t
        -0x45t
        0x0t
        0x73t
        0x66t
        -0x5t
        -0x6at
        0x4ct
        -0x7bt
        -0x1ct
        0x3at
        0x9t
        0x45t
        -0x56t
        0xft
        -0x12t
        0x10t
        -0x15t
        0x2dt
        0x7ft
        -0xct
        0x29t
        -0x54t
        -0x31t
        -0x53t
        -0x6ft
        -0x73t
        0x78t
        -0x38t
        -0x6bt
        -0x7t
        0x2ft
        -0x32t
        -0x33t
        0x8t
        0x7at
        -0x78t
        0x38t
        0x5ct
        -0x7dt
        0x2at
        0x28t
        0x47t
        -0x25t
        -0x48t
        -0x39t
        -0x6dt
        -0x5ct
        0x12t
        0x53t
        -0x1t
        -0x79t
        0xet
        0x31t
        0x36t
        0x21t
        0x58t
        0x48t
        0x1t
        -0x72t
        0x37t
        0x74t
        0x32t
        -0x36t
        -0x17t
        -0x4ft
        -0x49t
        -0x55t
        0xct
        -0x29t
        -0x3ct
        0x56t
        0x42t
        0x26t
        0x7t
        -0x68t
        0x60t
        -0x27t
        -0x4at
        -0x47t
        0x11t
        0x40t
        -0x14t
        0x20t
        -0x74t
        -0x43t
        -0x60t
        -0x37t
        -0x7ct
        0x4t
        0x49t
        0x23t
        -0xft
        0x4ft
        0x50t
        0x1ft
        0x13t
        -0x24t
        -0x28t
        -0x40t
        -0x62t
        0x57t
        -0x1dt
        -0x3dt
        0x7bt
        0x65t
        0x3bt
        0x2t
        -0x71t
        0x3et
        -0x18t
        0x25t
        -0x6et
        -0x1bt
        0x15t
        -0x23t
        -0x3t
        0x17t
        -0x57t
        -0x41t
        -0x2ct
        -0x66t
        0x7et
        -0x3bt
        0x39t
        0x67t
        -0x2t
        0x76t
        -0x63t
        0x43t
        -0x59t
        -0x1ft
        -0x30t
        -0xbt
        0x68t
        -0xet
        0x1bt
        0x34t
        0x70t
        0x5t
        -0x5dt
        -0x76t
        -0x2bt
        0x79t
        -0x7at
        -0x58t
        0x30t
        -0x3at
        0x51t
        0x4bt
        0x1et
        -0x5at
        0x27t
        -0xat
        0x35t
        -0x2et
        0x6et
        0x24t
        0x16t
        -0x7et
        0x5ft
        -0x26t
        -0x1at
        0x75t
        -0x5et
        -0x11t
        0x2ct
        -0x4et
        0x1ct
        -0x61t
        0x5dt
        0x6ft
        -0x80t
        0xat
        0x72t
        0x44t
        -0x65t
        0x6ct
        -0x70t
        0xbt
        0x5bt
        0x33t
        0x7dt
        0x5at
        0x52t
        -0xdt
        0x61t
        -0x5ft
        -0x9t
        -0x50t
        -0x2at
        0x3ft
        0x7ct
        0x6dt
        -0x13t
        0x14t
        -0x20t
        -0x5bt
        0x3dt
        0x22t
        -0x4dt
        -0x8t
        -0x77t
        -0x22t
        0x71t
        0x1at
        -0x51t
        -0x46t
        -0x4bt
        -0x7ft
    .end array-data

    .line 81
    :array_2
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    .line 111
    :array_3
    .array-data 1
        0x30t
        0x68t
        -0x67t
        0x1bt
        -0x79t
        -0x47t
        0x21t
        0x78t
        0x50t
        0x39t
        -0x25t
        -0x1ft
        0x72t
        0x9t
        0x62t
        0x3ct
        0x3et
        0x7et
        0x5et
        -0x72t
        -0xft
        -0x60t
        -0x34t
        -0x5dt
        0x2at
        0x1dt
        -0x5t
        -0x4at
        -0x2at
        0x20t
        -0x3ct
        -0x73t
        -0x7ft
        0x65t
        -0xbt
        -0x77t
        -0x35t
        -0x63t
        0x77t
        -0x3at
        0x57t
        0x43t
        0x56t
        0x17t
        -0x2ct
        0x40t
        0x1at
        0x4dt
        -0x40t
        0x63t
        0x6ct
        -0x1dt
        -0x49t
        -0x38t
        0x64t
        0x6at
        0x53t
        -0x56t
        0x38t
        -0x68t
        0xct
        -0xct
        -0x65t
        -0x13t
        0x7ft
        0x22t
        0x76t
        -0x51t
        -0x23t
        0x3at
        0xbt
        0x58t
        0x67t
        -0x78t
        0x6t
        -0x3dt
        0x35t
        0xdt
        0x1t
        -0x75t
        -0x74t
        -0x3et
        -0x1at
        0x5ft
        0x2t
        0x24t
        0x75t
        -0x6dt
        0x66t
        0x1et
        -0x1bt
        -0x1et
        0x54t
        -0x28t
        0x10t
        -0x32t
        0x7at
        -0x18t
        0x8t
        0x2ct
        0x12t
        -0x69t
        0x32t
        -0x55t
        -0x4ct
        0x27t
        0xat
        0x23t
        -0x21t
        -0x11t
        -0x36t
        -0x27t
        -0x48t
        -0x6t
        -0x24t
        0x31t
        0x6bt
        -0x2ft
        -0x53t
        0x19t
        0x49t
        -0x43t
        0x51t
        -0x6at
        -0x12t
        -0x1ct
        -0x58t
        0x41t
        -0x26t
        -0x1t
        -0x33t
        0x55t
        -0x7at
        0x36t
        -0x42t
        0x61t
        0x52t
        -0x8t
        -0x45t
        0xet
        -0x7et
        0x48t
        0x69t
        -0x66t
        -0x20t
        0x47t
        -0x62t
        0x5ct
        0x4t
        0x4bt
        0x34t
        0x15t
        0x79t
        0x26t
        -0x59t
        -0x22t
        0x29t
        -0x52t
        -0x6et
        -0x29t
        -0x7ct
        -0x17t
        -0x2et
        -0x46t
        0x5dt
        -0xdt
        -0x3bt
        -0x50t
        -0x41t
        -0x5ct
        0x3bt
        0x71t
        0x44t
        0x46t
        0x2bt
        -0x4t
        -0x15t
        0x6ft
        -0x2bt
        -0xat
        0x14t
        -0x2t
        0x7ct
        0x70t
        0x5at
        0x7dt
        -0x3t
        0x2ft
        0x18t
        -0x7dt
        0x16t
        -0x5bt
        -0x6ft
        0x1ft
        0x5t
        -0x6bt
        0x74t
        -0x57t
        -0x3ft
        0x5bt
        0x4at
        -0x7bt
        0x6dt
        0x13t
        0x7t
        0x4ft
        0x4et
        0x45t
        -0x4et
        0xft
        -0x37t
        0x1ct
        -0x5at
        -0x44t
        -0x14t
        0x73t
        -0x70t
        0x7bt
        -0x31t
        0x59t
        -0x71t
        -0x5ft
        -0x7t
        0x2dt
        -0xet
        -0x4ft
        0x0t
        -0x6ct
        0x37t
        -0x61t
        -0x30t
        0x2et
        -0x64t
        0x6et
        0x28t
        0x3ft
        -0x80t
        -0x10t
        0x3dt
        -0x2dt
        0x25t
        -0x76t
        -0x4bt
        -0x19t
        0x42t
        -0x4dt
        -0x39t
        -0x16t
        -0x9t
        0x4ct
        0x11t
        0x33t
        0x3t
        -0x5et
        -0x54t
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static A([B)V
    .locals 19
    .param p0, "z"    # [B

    .prologue
    .line 211
    const/16 v17, 0x0

    aget-byte v1, p0, v17

    .local v1, "x0":B
    const/16 v17, 0x1

    aget-byte v2, p0, v17

    .local v2, "x1":B
    const/16 v17, 0x2

    aget-byte v9, p0, v17

    .local v9, "x2":B
    const/16 v17, 0x3

    aget-byte v10, p0, v17

    .local v10, "x3":B
    const/16 v17, 0x4

    aget-byte v11, p0, v17

    .local v11, "x4":B
    const/16 v17, 0x5

    aget-byte v12, p0, v17

    .local v12, "x5":B
    const/16 v17, 0x6

    aget-byte v13, p0, v17

    .local v13, "x6":B
    const/16 v17, 0x7

    aget-byte v14, p0, v17

    .local v14, "x7":B
    const/16 v17, 0x8

    aget-byte v15, p0, v17

    .line 212
    .local v15, "x8":B
    const/16 v17, 0x9

    aget-byte v16, p0, v17

    .local v16, "x9":B
    const/16 v17, 0xa

    aget-byte v3, p0, v17

    .local v3, "x10":B
    const/16 v17, 0xb

    aget-byte v4, p0, v17

    .local v4, "x11":B
    const/16 v17, 0xc

    aget-byte v5, p0, v17

    .local v5, "x12":B
    const/16 v17, 0xd

    aget-byte v6, p0, v17

    .local v6, "x13":B
    const/16 v17, 0xe

    aget-byte v7, p0, v17

    .local v7, "x14":B
    const/16 v17, 0xf

    aget-byte v8, p0, v17

    .line 214
    .local v8, "x15":B
    const/16 v17, 0x0

    xor-int v18, v10, v11

    xor-int v18, v18, v13

    xor-int v18, v18, v15

    xor-int v18, v18, v16

    xor-int v18, v18, v6

    xor-int v18, v18, v7

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 215
    const/16 v17, 0x1

    xor-int v18, v9, v12

    xor-int v18, v18, v14

    xor-int v18, v18, v15

    xor-int v18, v18, v16

    xor-int v18, v18, v5

    xor-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 216
    const/16 v17, 0x2

    xor-int v18, v2, v11

    xor-int v18, v18, v13

    xor-int v18, v18, v3

    xor-int v18, v18, v4

    xor-int v18, v18, v5

    xor-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 217
    const/16 v17, 0x3

    xor-int v18, v1, v12

    xor-int v18, v18, v14

    xor-int v18, v18, v3

    xor-int v18, v18, v4

    xor-int v18, v18, v6

    xor-int v18, v18, v7

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 218
    const/16 v17, 0x4

    xor-int v18, v1, v9

    xor-int v18, v18, v12

    xor-int v18, v18, v15

    xor-int v18, v18, v4

    xor-int v18, v18, v7

    xor-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 219
    const/16 v17, 0x5

    xor-int v18, v2, v10

    xor-int v18, v18, v11

    xor-int v18, v18, v16

    xor-int v18, v18, v3

    xor-int v18, v18, v7

    xor-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 220
    const/16 v17, 0x6

    xor-int v18, v1, v9

    xor-int v18, v18, v14

    xor-int v18, v18, v16

    xor-int v18, v18, v3

    xor-int v18, v18, v5

    xor-int v18, v18, v6

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 221
    const/16 v17, 0x7

    xor-int v18, v2, v10

    xor-int v18, v18, v13

    xor-int v18, v18, v15

    xor-int v18, v18, v4

    xor-int v18, v18, v5

    xor-int v18, v18, v6

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 222
    const/16 v17, 0x8

    xor-int v18, v1, v2

    xor-int v18, v18, v11

    xor-int v18, v18, v14

    xor-int v18, v18, v3

    xor-int v18, v18, v6

    xor-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 223
    const/16 v17, 0x9

    xor-int v18, v1, v2

    xor-int v18, v18, v12

    xor-int v18, v18, v13

    xor-int v18, v18, v4

    xor-int v18, v18, v5

    xor-int v18, v18, v7

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 224
    const/16 v17, 0xa

    xor-int v18, v9, v10

    xor-int v18, v18, v12

    xor-int v18, v18, v13

    xor-int v18, v18, v15

    xor-int v18, v18, v6

    xor-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 225
    const/16 v17, 0xb

    xor-int v18, v9, v10

    xor-int v18, v18, v11

    xor-int v18, v18, v14

    xor-int v18, v18, v16

    xor-int v18, v18, v5

    xor-int v18, v18, v7

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 226
    const/16 v17, 0xc

    xor-int v18, v2, v9

    xor-int v18, v18, v13

    xor-int v18, v18, v14

    xor-int v18, v18, v16

    xor-int v18, v18, v4

    xor-int v18, v18, v5

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 227
    const/16 v17, 0xd

    xor-int v18, v1, v10

    xor-int v18, v18, v13

    xor-int v18, v18, v14

    xor-int v18, v18, v15

    xor-int v18, v18, v3

    xor-int v18, v18, v6

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 228
    const/16 v17, 0xe

    xor-int v18, v1, v10

    xor-int v18, v18, v11

    xor-int v18, v18, v12

    xor-int v18, v18, v16

    xor-int v18, v18, v4

    xor-int v18, v18, v7

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 229
    const/16 v17, 0xf

    xor-int v18, v2, v9

    xor-int v18, v18, v11

    xor-int v18, v18, v12

    xor-int v18, v18, v15

    xor-int v18, v18, v3

    xor-int v18, v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    .line 230
    return-void
.end method

.method protected static FE([B[B)V
    .locals 0
    .param p0, "D"    # [B
    .param p1, "RK"    # [B

    .prologue
    .line 234
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 235
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SL2([B)V

    .line 236
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->A([B)V

    .line 237
    return-void
.end method

.method protected static FO([B[B)V
    .locals 0
    .param p0, "D"    # [B
    .param p1, "RK"    # [B

    .prologue
    .line 241
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 242
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SL1([B)V

    .line 243
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->A([B)V

    .line 244
    return-void
.end method

.method protected static SB1(B)B
    .locals 2
    .param p0, "x"    # B

    .prologue
    .line 359
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB2(B)B
    .locals 2
    .param p0, "x"    # B

    .prologue
    .line 364
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB3(B)B
    .locals 2
    .param p0, "x"    # B

    .prologue
    .line 369
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB4(B)B
    .locals 2
    .param p0, "x"    # B

    .prologue
    .line 374
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SL1([B)V
    .locals 6
    .param p0, "z"    # [B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 379
    aget-byte v0, p0, v1

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v0

    aput-byte v0, p0, v1

    .line 380
    aget-byte v0, p0, v2

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v0

    aput-byte v0, p0, v2

    .line 381
    aget-byte v0, p0, v3

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v0

    aput-byte v0, p0, v3

    .line 382
    aget-byte v0, p0, v4

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v0

    aput-byte v0, p0, v4

    .line 383
    aget-byte v0, p0, v5

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v0

    aput-byte v0, p0, v5

    .line 384
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 385
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 386
    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 387
    const/16 v0, 0x8

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 388
    const/16 v0, 0x9

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 389
    const/16 v0, 0xa

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 390
    const/16 v0, 0xb

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 391
    const/16 v0, 0xc

    const/16 v1, 0xc

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 392
    const/16 v0, 0xd

    const/16 v1, 0xd

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 393
    const/16 v0, 0xe

    const/16 v1, 0xe

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 394
    const/16 v0, 0xf

    const/16 v1, 0xf

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 395
    return-void
.end method

.method protected static SL2([B)V
    .locals 6
    .param p0, "z"    # [B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 399
    aget-byte v0, p0, v1

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v0

    aput-byte v0, p0, v1

    .line 400
    aget-byte v0, p0, v2

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v0

    aput-byte v0, p0, v2

    .line 401
    aget-byte v0, p0, v3

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v0

    aput-byte v0, p0, v3

    .line 402
    aget-byte v0, p0, v4

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v0

    aput-byte v0, p0, v4

    .line 403
    aget-byte v0, p0, v5

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v0

    aput-byte v0, p0, v5

    .line 404
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 405
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 406
    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 407
    const/16 v0, 0x8

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 408
    const/16 v0, 0x9

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 409
    const/16 v0, 0xa

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 410
    const/16 v0, 0xb

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 411
    const/16 v0, 0xc

    const/16 v1, 0xc

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 412
    const/16 v0, 0xd

    const/16 v1, 0xd

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 413
    const/16 v0, 0xe

    const/16 v1, 0xe

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 414
    const/16 v0, 0xf

    const/16 v1, 0xf

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 415
    return-void
.end method

.method protected static keySchedule(Z[B)[[B
    .locals 21
    .param p0, "forEncryption"    # Z
    .param p1, "K"    # [B

    .prologue
    .line 248
    move-object/from16 v0, p1

    array-length v14, v0

    .line 249
    .local v14, "keyLen":I
    const/16 v18, 0x10

    move/from16 v0, v18

    if-lt v14, v0, :cond_0

    const/16 v18, 0x20

    move/from16 v0, v18

    if-gt v14, v0, :cond_0

    and-int/lit8 v18, v14, 0x7

    if-eqz v18, :cond_1

    .line 251
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Key length not 128/192/256 bits."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 254
    :cond_1
    ushr-int/lit8 v18, v14, 0x3

    add-int/lit8 v15, v18, -0x2

    .line 256
    .local v15, "keyLenIdx":I
    sget-object v18, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    aget-object v4, v18, v15

    .line 257
    .local v4, "CK1":[B
    sget-object v18, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v19, v15, 0x1

    rem-int/lit8 v19, v19, 0x3

    aget-object v5, v18, v19

    .line 258
    .local v5, "CK2":[B
    sget-object v18, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v19, v15, 0x2

    rem-int/lit8 v19, v19, 0x3

    aget-object v6, v18, v19

    .line 260
    .local v6, "CK3":[B
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v7, v0, [B

    .local v7, "KL":[B
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v8, v0, [B

    .line 261
    .local v8, "KR":[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    const/16 v18, 0x10

    const/16 v19, 0x0

    add-int/lit8 v20, v14, -0x10

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v9, v0, [B

    .line 265
    .local v9, "W0":[B
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 266
    .local v10, "W1":[B
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v11, v0, [B

    .line 267
    .local v11, "W2":[B
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v12, v0, [B

    .line 269
    .local v12, "W3":[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v7, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v9, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    invoke-static {v10, v4}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 273
    invoke-static {v10, v8}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 275
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v10, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    invoke-static {v11, v5}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    .line 277
    invoke-static {v11, v9}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 279
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    invoke-static {v12, v6}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 281
    invoke-static {v12, v10}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 283
    mul-int/lit8 v18, v15, 0x2

    add-int/lit8 v16, v18, 0xc

    .line 284
    .local v16, "numRounds":I
    add-int/lit8 v18, v16, 0x1

    const/16 v19, 0x10

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[B

    .line 286
    .local v17, "rks":[[B
    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x13

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v10, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 287
    const/16 v18, 0x1

    aget-object v18, v17, v18

    const/16 v19, 0x13

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v10, v11, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 288
    const/16 v18, 0x2

    aget-object v18, v17, v18

    const/16 v19, 0x13

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v11, v12, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 289
    const/16 v18, 0x3

    aget-object v18, v17, v18

    const/16 v19, 0x13

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v9, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 291
    const/16 v18, 0x4

    aget-object v18, v17, v18

    const/16 v19, 0x1f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v10, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 292
    const/16 v18, 0x5

    aget-object v18, v17, v18

    const/16 v19, 0x1f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v10, v11, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 293
    const/16 v18, 0x6

    aget-object v18, v17, v18

    const/16 v19, 0x1f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v11, v12, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 294
    const/16 v18, 0x7

    aget-object v18, v17, v18

    const/16 v19, 0x1f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v9, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 296
    const/16 v18, 0x8

    aget-object v18, v17, v18

    const/16 v19, 0x43

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v10, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 297
    const/16 v18, 0x9

    aget-object v18, v17, v18

    const/16 v19, 0x43

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v10, v11, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 298
    const/16 v18, 0xa

    aget-object v18, v17, v18

    const/16 v19, 0x43

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v11, v12, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 299
    const/16 v18, 0xb

    aget-object v18, v17, v18

    const/16 v19, 0x43

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v9, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 301
    const/16 v18, 0xc

    aget-object v18, v17, v18

    const/16 v19, 0x61

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v10, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 302
    const/16 v18, 0xc

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 304
    const/16 v18, 0xd

    aget-object v18, v17, v18

    const/16 v19, 0x61

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v10, v11, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 305
    const/16 v18, 0xe

    aget-object v18, v17, v18

    const/16 v19, 0x61

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v11, v12, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 306
    const/16 v18, 0xe

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 308
    const/16 v18, 0xf

    aget-object v18, v17, v18

    const/16 v19, 0x61

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v9, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 310
    const/16 v18, 0x10

    aget-object v18, v17, v18

    const/16 v19, 0x6d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v10, v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 314
    :cond_2
    if-nez p0, :cond_3

    .line 316
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/ARIAEngine;->reverseKeys([[B)V

    .line 318
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 320
    aget-object v18, v17, v13

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/crypto/engines/ARIAEngine;->A([B)V

    .line 318
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 324
    .end local v13    # "i":I
    :cond_3
    return-object v17
.end method

.method protected static keyScheduleRound([B[B[BI)V
    .locals 9
    .param p0, "rk"    # [B
    .param p1, "w"    # [B
    .param p2, "wr"    # [B
    .param p3, "n"    # I

    .prologue
    .line 329
    ushr-int/lit8 v4, p3, 0x3

    .local v4, "off":I
    and-int/lit8 v5, p3, 0x7

    .local v5, "right":I
    rsub-int/lit8 v2, v5, 0x8

    .line 331
    .local v2, "left":I
    rsub-int/lit8 v7, v4, 0xf

    aget-byte v7, p2, v7

    and-int/lit16 v1, v7, 0xff

    .line 333
    .local v1, "hi":I
    const/4 v6, 0x0

    .local v6, "to":I
    :goto_0
    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    .line 335
    sub-int v7, v6, v4

    and-int/lit8 v7, v7, 0xf

    aget-byte v7, p2, v7

    and-int/lit16 v3, v7, 0xff

    .line 337
    .local v3, "lo":I
    shl-int v7, v1, v2

    ushr-int v8, v3, v5

    or-int v0, v7, v8

    .line 338
    .local v0, "b":I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    .line 340
    int-to-byte v7, v0

    aput-byte v7, p0, v6

    .line 342
    move v1, v3

    .line 333
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "b":I
    .end local v3    # "lo":I
    :cond_0
    return-void
.end method

.method protected static reverseKeys([[B)V
    .locals 6
    .param p0, "keys"    # [[B

    .prologue
    .line 348
    array-length v2, p0

    .local v2, "length":I
    div-int/lit8 v3, v2, 0x2

    .local v3, "limit":I
    add-int/lit8 v1, v2, -0x1

    .line 349
    .local v1, "last":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 351
    aget-object v4, p0, v0

    .line 352
    .local v4, "t":[B
    sub-int v5, v1, v0

    aget-object v5, p0, v5

    aput-object v5, p0, v0

    .line 353
    sub-int v5, v1, v0

    aput-object v4, p0, v5

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v4    # "t":[B
    :cond_0
    return-void
.end method

.method protected static xor([B[B)V
    .locals 3
    .param p0, "z"    # [B
    .param p1, "x"    # [B

    .prologue
    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 421
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "ARIA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 148
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to ARIA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keySchedule(Z[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    .line 156
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 7
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
    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 171
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    if-nez v4, :cond_0

    .line 173
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ARIA engine not initialised"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x10

    if-le p2, v4, :cond_1

    .line 177
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "input buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_1
    array-length v4, p3

    add-int/lit8 v4, v4, -0x10

    if-le p4, v4, :cond_2

    .line 181
    new-instance v4, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_2
    new-array v3, v5, [B

    .line 185
    .local v3, "z":[B
    invoke-static {p1, p2, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length v4, v4

    add-int/lit8 v2, v4, -0x3

    .local v2, "rounds":I
    move v1, v0

    .line 188
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 190
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 191
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 195
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 196
    invoke-static {v3}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SL2([B)V

    .line 197
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 199
    invoke-static {v3, v6, p3, p4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    return v5
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method
