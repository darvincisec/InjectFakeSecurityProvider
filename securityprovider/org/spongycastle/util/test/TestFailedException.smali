.class public Lorg/spongycastle/util/test/TestFailedException;
.super Ljava/lang/RuntimeException;
.source "TestFailedException.java"


# instance fields
.field private _result:Lorg/spongycastle/util/test/TestResult;


# direct methods
.method public constructor <init>(Lorg/spongycastle/util/test/TestResult;)V
    .locals 0
    .param p1, "result"    # Lorg/spongycastle/util/test/TestResult;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/spongycastle/util/test/TestFailedException;->_result:Lorg/spongycastle/util/test/TestResult;

    .line 12
    return-void
.end method


# virtual methods
.method public getResult()Lorg/spongycastle/util/test/TestResult;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/spongycastle/util/test/TestFailedException;->_result:Lorg/spongycastle/util/test/TestResult;

    return-object v0
.end method
