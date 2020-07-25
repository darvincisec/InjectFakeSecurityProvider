.class public Lorg/spongycastle/crypto/engines/AESEngine;
.super Ljava/lang/Object;
.source "AESEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B

.field private static final Si:[B

.field private static final T0:[I

.field private static final Tinv0:[I

.field private static final m1:I = -0x7f7f7f80

.field private static final m2:I = 0x7f7f7f7f

.field private static final m3:I = 0x1b

.field private static final m4:I = -0x3f3f3f40

.field private static final m5:I = 0x3f3f3f3f

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z

.field private s:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    .line 74
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    .line 110
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->rcon:[I

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    .line 170
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    return-void

    .line 38
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

    .line 74
    :array_1
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

    .line 110
    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    .line 115
    :array_3
    .array-data 4
        -0x5a9c9c3a
        -0x7b838308
        -0x66888812
        -0x7284840a
        0xdf2f2ff
        -0x4294942a
        -0x4e909022
        0x54c5c591
        0x50303060
        0x3010102
        -0x56989832
        0x7d2b2b56
        0x19fefee7
        0x62d7d7b5
        -0x195454b3
        -0x65898914
        0x45caca8f
        -0x627d7de1
        0x40c9c989
        -0x78828206
        0x15fafaef
        -0x14a6a64e
        -0x36b8b872
        0xbf0f0fb
        -0x135252bf
        0x67d4d4b3
        -0x25d5da1
        -0x155050bb
        -0x406363dd
        -0x85b5bad
        -0x698d8d1c
        0x5bc0c09b
        -0x3d48488b
        0x1cfdfde1
        -0x516c6cc3
        0x6a26264c
        0x5a36366c
        0x413f3f7e
        0x2f7f7f5
        0x4fcccc83
        0x5c343468
        -0xb5a5aaf
        0x34e5e5d1
        0x8f1f1f9
        -0x6c8e8e1e
        0x73d8d8ab
        0x53313162
        0x3f15152a
        0xc040408
        0x52c7c795
        0x65232346
        0x5ec3c39d
        0x28181830
        -0x5e6969c9
        0xf05050a
        -0x4a6565d1
        0x907070e
        0x36121224
        -0x647f7fe5
        0x3de2e2df
        0x26ebebcd
        0x6927274e
        -0x324d4d81
        -0x608a8a16
        0x1b090912
        -0x617c7ce3
        0x742c2c58
        0x2e1a1a34
        0x2d1b1b36
        -0x4d919124
        -0x11a5a54c
        -0x45f5fa5
        -0x9adad5c
        0x4d3b3b76    # 1.96327264E8f
        0x61d6d6b7
        -0x314c4c83
        0x7b292952
        0x3ee3e3dd
        0x712f2f5e
        -0x687b7bed
        -0xaacac5a
        0x68d1d1b9
        0x0
        0x2cededc1
        0x60202040
        0x1ffcfce3
        -0x374e4e87
        -0x12a4a44a
        -0x4195952c
        0x46cbcb8d
        -0x26414199
        0x4b393972    # 1.2138866E7f
        -0x21b5b56c
        -0x2bb3b368
        -0x17a7a750
        0x4acfcf85    # 6809538.5f
        0x6bd0d0bb
        0x2aefefc5
        -0x1a5555b1
        0x16fbfbed
        -0x3abcbc7a
        -0x28b2b266
        0x55333366
        -0x6b7a7aef
        -0x30baba76
        0x10f9f9e9
        0x6020204
        -0x7e808002
        -0xfafaf60
        0x443c3c78
        -0x456060db
        -0x1c5757b5
        -0xcaeae5e
        -0x15c5ca3
        -0x3fbfbf80
        -0x757070fb
        -0x526d6dc1
        -0x436262df
        0x48383870    # 188641.75f
        0x4f5f5f1
        -0x2043439d
        -0x3e494989
        0x75dadaaf
        0x63212142
        0x30101020
        0x1affffe5
        0xef3f3fd
        0x6dd2d2bf
        0x4ccdcd81    # 1.07899912E8f
        0x140c0c18
        0x35131326
        0x2fececc3
        -0x1ea0a042
        -0x5d6868cb
        -0x33bbbb78    # -5.14504E7f
        0x3917172e
        0x57c4c493
        -0xd5858ab
        -0x7d818104
        0x473d3d7a
        -0x539b9b38
        -0x18a2a246
        0x2b191932
        -0x6a8c8c1a
        -0x5f9f9f40
        -0x677e7ee7
        -0x2eb0b062
        0x7fdcdca3
        0x66222244
        0x7e2a2a54
        -0x546f6fc5
        -0x7c7777f5
        -0x35b9b974    # -3248547.0f
        0x29eeeec7
        -0x2c474795
        0x3c141428
        0x79dedea7
        -0x1da1a144
        0x1d0b0b16
        0x76dbdbad
        0x3be0e0db
        0x56323264
        0x4e3a3a74
        0x1e0a0a14
        -0x24b6b66e
        0xa06060c
        0x6c242448
        -0x1ba3a348
        0x5dc2c29f
        0x6ed3d3bd
        -0x105353bd
        -0x599d9d3c
        -0x576e6ec7
        -0x5b6a6acf
        0x37e4e4d3
        -0x7486860e
        0x32e7e7d5
        0x43c8c88b
        0x5937376e
        -0x48929226
        -0x737272ff
        0x64d5d5b1
        -0x2db1b164
        -0x1f5656b7
        -0x4b939328
        -0x5a9a954
        0x7f4f4f3
        0x25eaeacf
        -0x509a9a36
        -0x7185850c
        -0x165151b9
        0x18080810
        -0x2a454591
        -0x77878710
        0x6f25254a
        0x722e2e5c
        0x241c1c38
        -0xe5959a9
        -0x384b4b8d
        0x51c6c697
        0x23e8e8cb
        0x7cdddda1
        -0x638b8b18
        0x211f1f3e
        -0x22b4b46a
        -0x2342429f
        -0x797474f3
        -0x7a7575f1
        -0x6f8f8f20
        0x423e3e7c
        -0x3b4a4a8f
        -0x55999934
        -0x27b7b770
        0x5030306
        0x1f6f6f7
        0x120e0e1c
        -0x5c9e9e3e
        0x5f35356a
        -0x6a8a852
        -0x2f464697
        -0x6e7979e9
        0x58c1c199
        0x271d1d3a
        -0x466161d9
        0x38e1e1d9
        0x13f8f8eb
        -0x4c6767d5
        0x33111122
        -0x4496962e
        0x70d9d9a9
        -0x767171f9
        -0x586b6bcd
        -0x496464d3
        0x221e1e3c
        -0x6d7878eb
        0x20e9e9c9
        0x49cece87
        -0xaaaa56
        0x78282850
        0x7adfdfa5
        -0x707373fd
        -0x75e5ea7
        -0x7f7676f7
        0x170d0d1a
        -0x2540409b
        0x31e6e6d7
        -0x39bdbd7c
        -0x47979730
        -0x3cbebe7e
        -0x4f6666d7
        0x772d2d5a
        0x110f0f1e
        -0x344f4f85    # -2.315903E7f
        -0x3abab58
        -0x29444493
        0x3a16162c
    .end array-data

    .line 170
    :array_4
    .array-data 4
        0x50a7f451
        0x5365417e
        -0x3c5be8e6
        -0x69a1d8c6
        -0x349454c5    # -1.5444795E7f
        -0xeba62e1
        -0x54a70554
        -0x6cfc1cb5
        0x55fa3020
        -0x9928953
        -0x6e893378
        0x254c02f5
        -0x3281ab1
        -0x2834d53b
        -0x7fbbcada
        -0x705c9d4b
        0x495ab1de    # 895773.9f
        0x671bba25
        -0x67f115bb
        -0x1e3f01a3
        0x2752fc3
        0x12f04c81
        -0x5c68b973
        -0x39062c95
        -0x18a070fd
        -0x6a636deb
        -0x14859241
        -0x25a6ad6b
        0x2d83bed4
        -0x2cde8ba8
        0x2969e049
        0x44c8c98e
        0x6a89c275
        0x78798ef4
        0x6b3e5899
        -0x228e46d9
        -0x49b01e42
        0x17ad88f0
        0x66ac20c9
        -0x4bc53183
        0x184adf63
        -0x7dcee51b
        0x60335197
        0x457f5362
        -0x1f889b4f
        -0x7b519445
        0x1ca081fe
        -0x6bd4f707
        0x58684870
        0x19fd458f
        -0x7893216c
        -0x480784ae
        0x23d373ab
        -0x1dfdb48e
        0x578f1fe3
        0x2aab5566
        0x728ebb2
        0x3c2b52f
        -0x65843a7a
        -0x5af7c82d
        -0xd78d7d0
        -0x4d5a40dd
        -0x4595fcfe
        0x5c8216ed
        0x2b1ccf8a
        -0x6d4b8659
        -0xf0df80d
        -0x5e1d96b2
        -0x320b259b
        -0x2a41fafa
        0x1f6234d1
        -0x7501593c
        -0x62acd1cc
        -0x5faa0c5e
        0x32e18a05
        0x75ebf6a4
        0x39ec830b
        -0x55109fc0
        0x69f715e
        0x51106ebd
        -0x675dec2
        0x3d06dd96
        -0x51fac123
        0x46bde64d
        -0x4a72ab6f
        0x55dc471
        0x6fd40604
        -0xeaafa0
        0x24fb9819
        -0x6816422a
        -0x33bcbf77    # -5.1184164E7f
        0x779ed967
        -0x42bd1750
        -0x777476f9
        0x385b19e7
        -0x24113787
        0x470a7ca1
        -0x16f0bd84
        -0x36e17b08    # -649295.5f
        0x0
        -0x7c797ff7
        0x48ed2b32
        -0x538feee2
        0x4e725a6c
        -0x400f103
        0x5638850f
        0x1ed5ae3d
        0x27392d36
        0x64d90f0a
        0x21a65c68
        -0x2eaba465
        0x3a2e3624
        -0x4e98f5f4
        0xfe75793
        -0x2d69114c
        -0x616e64e5
        0x4fc5c080
        -0x5ddf239f
        0x694b775a
        0x161a121c
        0xaba93e2
        -0x1ad55f40
        0x43e0223c
        0x1d171b12    # 1.9998679E-21f
        0xb0d090e
        -0x5238740e
        -0x465749d3
        -0x3756e1ec
        -0x7ae60ea9
        0x4c0775af    # 3.5509948E7f
        -0x44226612
        -0x29f805d
        -0x60d9fe09
        -0x430a8da4
        -0x3ac499bc
        0x347efb5b
        0x7629438b
        -0x2339dc35
        0x68fcedb6
        0x63f1e4b8
        -0x3523ce29    # -7215339.5f
        0x10856342
        0x40229713
        0x2011c684
        0x7d244a85
        -0x7c2442e
        0x1132f9ae
        0x6da129c7
        0x4b2f9e1d    # 1.1509277E7f
        -0xccf4d24    # -1.3999511E31f
        -0x13ad79f3
        -0x2f1c3e89
        0x6c16b32b
        -0x66468f57
        -0x5b76bef
        0x2264e947
        -0x3b730358
        0x1a3ff0a0
        -0x27d382aa
        -0x106fccde
        -0x38b1b679
        -0x3e2ec727
        -0x15d3574
        0x360bd498
        -0x307e0a5a
        0x28de7aa5
        0x268eb7da
        -0x5b4052c1
        -0x1b62c5d4
        0xd927850
        -0x6433a096
        0x62467e54
        -0x3dec720a
        -0x17472770
        0x5ef7392e
        -0xa503c7e
        -0x417fa261
        0x7c93d069
        -0x56d22a91
        -0x4cedda31
        0x3b99acc8
        -0x5882e7f0
        0x6e639ce8
        0x7bbb3bdb
        0x97826cd
        -0xbe7a692
        0x1b79aec
        -0x5765b07d
        0x656e95e6
        0x7ee6ffaa
        0x8cfbc21
        -0x1917ea11
        -0x26641846
        -0x31c990b6
        -0x2bf66016
        -0x29834fd7
        -0x504d5bcf
        0x31233f2a
        0x3094a5c6
        -0x3f995dcb
        0x37bc4e74
        -0x59357d04
        -0x4f2f6f20
        0x15d8a733
        0x4a9804f1    # 4981368.5f
        -0x82513bf
        0xe50cd7f
        0x2ff69117
        -0x7229b28a
        0x4db0ef43    # 3.71058784E8f
        0x544daacc
        -0x20fb691c
        -0x1c4a2e62
        0x1b886a4c
        -0x47e0d33f
        0x7f516546
        0x4ea5e9d    # 5.5100024E-36f
        0x5d358c01
        0x737487fa
        0x2e410bfb
        0x5a1d67b3
        0x52d2db92
        0x335610e9
        0x1347d66d
        -0x739e2866
        0x7a0ca137
        -0x71eb07a7
        -0x76c3ec15
        -0x11d85632
        0x35c961b7
        -0x121ae31f
        0x3cb1477a
        0x59dfd29c
        0x3f73f255
        0x79ce1418
        -0x40c8388d
        -0x153208ad
        0x5baafd5f
        0x146f3ddf
        -0x7924bb88
        -0x7e0c5036
        0x3ec468b9
        0x2c342438
        0x5f40a3c2
        0x72c31d16
        0xc25e2bc
        -0x74b6c3d8
        0x41950dff
        0x7101a839
        -0x214cf3f8
        -0x631b4b28
        -0x6f3ea99c
        0x6184cb7b
        0x70b632d5
        0x745c6c48
        0x4257b8d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    .line 428
    return-void
.end method

.method private static FFmulX(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 240
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private static FFmulX2(I)I
    .locals 4
    .param p0, "x"    # I

    .prologue
    .line 245
    const v2, 0x3f3f3f3f

    and-int/2addr v2, p0

    shl-int/lit8 v0, v2, 0x2

    .line 246
    .local v0, "t0":I
    const v2, -0x3f3f3f40

    and-int v1, p0, v2

    .line 247
    .local v1, "t1":I
    ushr-int/lit8 v2, v1, 0x1

    xor-int/2addr v1, v2

    .line 248
    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    return v2
.end method

.method private decryptBlock([[I)V
    .locals 12
    .param p1, "KW"    # [[I

    .prologue
    .line 600
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 601
    .local v6, "t0":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 602
    .local v7, "t1":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 604
    .local v8, "t2":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v0, v9, -0x1

    .local v0, "r":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .local v5, "r3":I
    move v1, v0

    .line 605
    .end local v0    # "r":I
    .local v1, "r":I
    :goto_0
    const/4 v9, 0x1

    if-le v1, v9, :cond_0

    .line 607
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v6, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 608
    .local v2, "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v7, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 609
    .local v3, "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v8, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 610
    .local v4, "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v5, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "r":I
    .restart local v0    # "r":I
    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 611
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v2, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 612
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v3, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 613
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v4, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 614
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v5, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "r":I
    .restart local v1    # "r":I
    aget-object v10, p1, v0

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    goto/16 :goto_0

    .line 617
    .end local v2    # "r0":I
    .end local v3    # "r1":I
    .end local v4    # "r2":I
    :cond_0
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v6, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 618
    .restart local v2    # "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v7, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 619
    .restart local v3    # "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v8, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 620
    .restart local v4    # "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v5, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 624
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v10, v2, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    .line 625
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    .line 626
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v10, v4, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    .line 627
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    .line 628
    return-void
.end method

.method private encryptBlock([[I)V
    .locals 12
    .param p1, "KW"    # [[I

    .prologue
    .line 568
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 569
    .local v6, "t0":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 570
    .local v7, "t1":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 572
    .local v8, "t2":I
    const/4 v0, 0x1

    .local v0, "r":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 573
    .local v5, "r3":I
    :goto_0
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    add-int/lit8 v9, v9, -0x1

    if-ge v0, v9, :cond_0

    .line 575
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v6, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 576
    .local v2, "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v7, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 577
    .local v3, "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v8, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 578
    .local v4, "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v5, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "r":I
    .local v1, "r":I
    aget-object v10, p1, v0

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 579
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v2, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 580
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v3, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 581
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v4, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 582
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v5, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "r":I
    .restart local v0    # "r":I
    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    goto/16 :goto_0

    .line 585
    .end local v2    # "r0":I
    .end local v3    # "r1":I
    .end local v4    # "r2":I
    :cond_0
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v6, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 586
    .restart local v2    # "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v7, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 587
    .restart local v3    # "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v8, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    aget-object v10, p1, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 588
    .restart local v4    # "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v5, 0xff

    aget v9, v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v9, v10

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "r":I
    .restart local v1    # "r":I
    aget-object v10, p1, v0

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 592
    sget-object v9, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v10, v2, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    .line 593
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    .line 594
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v10, v4, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    .line 595
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    .line 596
    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 20
    .param p1, "key"    # [B
    .param p2, "forEncryption"    # Z

    .prologue
    .line 285
    move-object/from16 v0, p1

    array-length v6, v0

    .line 286
    .local v6, "keyLen":I
    const/16 v17, 0x10

    move/from16 v0, v17

    if-lt v6, v0, :cond_0

    const/16 v17, 0x20

    move/from16 v0, v17

    if-gt v6, v0, :cond_0

    and-int/lit8 v17, v6, 0x7

    if-eqz v17, :cond_1

    .line 288
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Key length not 128/192/256 bits."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 291
    :cond_1
    ushr-int/lit8 v2, v6, 0x2

    .line 292
    .local v2, "KC":I
    add-int/lit8 v17, v2, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x4

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 295
    .local v3, "W":[[I
    packed-switch v2, :pswitch_data_0

    .line 396
    :pswitch_0
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Should never get here"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 299
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .local v8, "t0":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 300
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    .local v9, "t1":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 301
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    .local v10, "t2":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 302
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .local v11, "t3":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 304
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v17, 0xa

    move/from16 v0, v17

    if-gt v4, v0, :cond_3

    .line 306
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v17

    sget-object v18, Lorg/spongycastle/crypto/engines/AESEngine;->rcon:[I

    add-int/lit8 v19, v4, -0x1

    aget v18, v18, v19

    xor-int v16, v17, v18

    .line 307
    .local v16, "u":I
    xor-int v8, v8, v16

    aget-object v17, v3, v4

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 308
    xor-int/2addr v9, v8

    aget-object v17, v3, v4

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 309
    xor-int/2addr v10, v9

    aget-object v17, v3, v4

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 310
    xor-int/2addr v11, v10

    aget-object v17, v3, v4

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    .end local v4    # "i":I
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "t2":I
    .end local v11    # "t3":I
    .end local v16    # "u":I
    :pswitch_2
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .restart local v8    # "t0":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 318
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    .restart local v9    # "t1":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 319
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    .restart local v10    # "t2":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 320
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .restart local v11    # "t3":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 321
    const/16 v17, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v12

    .local v12, "t4":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 322
    const/16 v17, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    .local v13, "t5":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 324
    const/4 v7, 0x1

    .line 325
    .local v7, "rcon":I
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .restart local v16    # "u":I
    shl-int/lit8 v7, v7, 0x1

    .line 326
    xor-int v8, v8, v16

    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v8, v17, v18

    .line 327
    xor-int/2addr v9, v8

    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v9, v17, v18

    .line 328
    xor-int/2addr v10, v9

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v10, v17, v18

    .line 329
    xor-int/2addr v11, v10

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v11, v17, v18

    .line 330
    xor-int/2addr v12, v11

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v12, v17, v18

    .line 331
    xor-int/2addr v13, v12

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v13, v17, v18

    .line 333
    const/4 v4, 0x3

    .restart local v4    # "i":I
    :goto_1
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 335
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    shl-int/lit8 v7, v7, 0x1

    .line 336
    xor-int v8, v8, v16

    aget-object v17, v3, v4

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 337
    xor-int/2addr v9, v8

    aget-object v17, v3, v4

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 338
    xor-int/2addr v10, v9

    aget-object v17, v3, v4

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 339
    xor-int/2addr v11, v10

    aget-object v17, v3, v4

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 340
    xor-int/2addr v12, v11

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 341
    xor-int/2addr v13, v12

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 342
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    shl-int/lit8 v7, v7, 0x1

    .line 343
    xor-int v8, v8, v16

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v8, v17, v18

    .line 344
    xor-int/2addr v9, v8

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v9, v17, v18

    .line 345
    xor-int/2addr v10, v9

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v10, v17, v18

    .line 346
    xor-int/2addr v11, v10

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v11, v17, v18

    .line 347
    xor-int/2addr v12, v11

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v12, v17, v18

    .line 348
    xor-int/2addr v13, v12

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v13, v17, v18

    .line 333
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_1

    .line 351
    :cond_2
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .line 352
    xor-int v8, v8, v16

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 353
    xor-int/2addr v9, v8

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 354
    xor-int/2addr v10, v9

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 355
    xor-int/2addr v11, v10

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 400
    .end local v7    # "rcon":I
    .end local v12    # "t4":I
    .end local v13    # "t5":I
    .end local v16    # "u":I
    :cond_3
    :goto_2
    if-nez p2, :cond_6

    .line 402
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/AESEngine;->ROUNDS:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 404
    const/4 v4, 0x0

    :goto_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    .line 406
    aget-object v17, v3, v5

    aget-object v18, v3, v5

    aget v18, v18, v4

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/crypto/engines/AESEngine;->inv_mcol(I)I

    move-result v18

    aput v18, v17, v4

    .line 404
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 361
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "t2":I
    .end local v11    # "t3":I
    :pswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .restart local v8    # "t0":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 362
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    .restart local v9    # "t1":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 363
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    .restart local v10    # "t2":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 364
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .restart local v11    # "t3":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 365
    const/16 v17, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v12

    .restart local v12    # "t4":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 366
    const/16 v17, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    .restart local v13    # "t5":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 367
    const/16 v17, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v14

    .local v14, "t6":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v14, v17, v18

    .line 368
    const/16 v17, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v15

    .local v15, "t7":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v15, v17, v18

    .line 370
    const/4 v7, 0x1

    .line 372
    .restart local v7    # "rcon":I
    const/4 v4, 0x2

    .restart local v4    # "i":I
    :goto_5
    const/16 v17, 0xe

    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    .line 374
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v15, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .restart local v16    # "u":I
    shl-int/lit8 v7, v7, 0x1

    .line 375
    xor-int v8, v8, v16

    aget-object v17, v3, v4

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 376
    xor-int/2addr v9, v8

    aget-object v17, v3, v4

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 377
    xor-int/2addr v10, v9

    aget-object v17, v3, v4

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 378
    xor-int/2addr v11, v10

    aget-object v17, v3, v4

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 379
    invoke-static {v11}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v16

    .line 380
    xor-int v12, v12, v16

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 381
    xor-int/2addr v13, v12

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 382
    xor-int/2addr v14, v13

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v14, v17, v18

    .line 383
    xor-int/2addr v15, v14

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v15, v17, v18

    .line 372
    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    .line 386
    .end local v16    # "u":I
    :cond_4
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v15, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .line 387
    .restart local v16    # "u":I
    xor-int v8, v8, v16

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 388
    xor-int/2addr v9, v8

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 389
    xor-int/2addr v10, v9

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 390
    xor-int/2addr v11, v10

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    goto/16 :goto_2

    .line 402
    .end local v7    # "rcon":I
    .end local v12    # "t4":I
    .end local v13    # "t5":I
    .end local v14    # "t6":I
    .end local v15    # "t7":I
    .end local v16    # "u":I
    .restart local v5    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 411
    .end local v5    # "j":I
    :cond_6
    return-object v3

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static inv_mcol(I)I
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 264
    move v0, p0

    .line 265
    .local v0, "t0":I
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int v1, v0, v2

    .line 266
    .local v1, "t1":I
    invoke-static {v1}, Lorg/spongycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v2

    xor-int/2addr v0, v2

    .line 267
    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESEngine;->FFmulX2(I)I

    move-result v2

    xor-int/2addr v1, v2

    .line 268
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v2, v1

    xor-int/2addr v0, v2

    .line 269
    return v0
.end method

.method private packBlock([BI)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 542
    move v0, p2

    .line 544
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 545
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 546
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 547
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 549
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 550
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 551
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 552
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 554
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 555
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 556
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 557
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 559
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 560
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 561
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 562
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 563
    return-void
.end method

.method private static shift(II)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "shift"    # I

    .prologue
    .line 227
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static subWord(I)I
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 274
    sget-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackBlock([BI)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 515
    move v0, p2

    .line 517
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    .line 518
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    .line 519
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    .line 520
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C0:I

    .line 522
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    .line 523
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    .line 524
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    .line 525
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C1:I

    .line 527
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    .line 528
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    .line 529
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    .line 530
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C2:I

    .line 532
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    .line 533
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    .line 534
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    .line 535
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESEngine;->C3:I

    .line 536
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 467
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 442
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 444
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/engines/AESEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    .line 445
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/AESEngine;->forEncryption:Z

    .line 446
    if-eqz p1, :cond_0

    .line 448
    sget-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->S:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/engines/AESEngine;->Si:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->s:[B

    goto :goto_0

    .line 457
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to AES init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 483
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 488
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 493
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    .line 494
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->encryptBlock([[I)V

    .line 495
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/AESEngine;->packBlock([BI)V

    .line 504
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 499
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    .line 500
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/AESEngine;->decryptBlock([[I)V

    .line 501
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/AESEngine;->packBlock([BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method
