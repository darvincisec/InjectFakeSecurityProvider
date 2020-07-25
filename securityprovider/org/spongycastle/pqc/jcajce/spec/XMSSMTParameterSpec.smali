.class public Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;
.super Ljava/lang/Object;
.source "XMSSMTParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA256:Ljava/lang/String; = "SHA256"

.field public static final SHA512:Ljava/lang/String; = "SHA512"

.field public static final SHAKE128:Ljava/lang/String; = "SHAKE128"

.field public static final SHAKE256:Ljava/lang/String; = "SHAKE256"


# instance fields
.field private final height:I

.field private final layers:I

.field private final treeDigest:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "height"    # I
    .param p2, "layers"    # I
    .param p3, "treeDigest"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    .line 35
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    .line 36
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    return v0
.end method

.method public getLayers()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    return v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
