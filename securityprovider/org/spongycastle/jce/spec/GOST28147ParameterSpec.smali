.class public Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;
.super Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;
.source "GOST28147ParameterSpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sBoxName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "sBoxName"    # Ljava/lang/String;
    .param p2, "iv"    # [B

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;[B)V

    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "sBox"    # [B

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>([B)V

    .line 17
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "sBox"    # [B
    .param p2, "iv"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>([B[B)V

    .line 28
    return-void
.end method
