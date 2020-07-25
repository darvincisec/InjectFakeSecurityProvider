.class public Lorg/spongycastle/pqc/jcajce/spec/XMSSParameterSpec;
.super Ljava/lang/Object;
.source "XMSSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA256:Ljava/lang/String; = "SHA256"

.field public static final SHA512:Ljava/lang/String; = "SHA512"

.field public static final SHAKE128:Ljava/lang/String; = "SHAKE128"

.field public static final SHAKE256:Ljava/lang/String; = "SHAKE256"


# instance fields
.field private final height:I

.field private final treeDigest:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "height"    # I
    .param p2, "treeDigest"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSParameterSpec;->height:I

    .line 34
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSParameterSpec;->treeDigest:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSParameterSpec;->height:I

    return v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSParameterSpec;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
