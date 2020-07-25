.class public abstract Lorg/spongycastle/util/test/SimpleTest;
.super Ljava/lang/Object;
.source "SimpleTest.java"

# interfaces
.implements Lorg/spongycastle/util/test/Test;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static runTest(Lorg/spongycastle/util/test/Test;)V
    .locals 1
    .param p0, "test"    # Lorg/spongycastle/util/test/Test;

    .prologue
    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/spongycastle/util/test/SimpleTest;->runTest(Lorg/spongycastle/util/test/Test;Ljava/io/PrintStream;)V

    .line 190
    return-void
.end method

.method protected static runTest(Lorg/spongycastle/util/test/Test;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "test"    # Lorg/spongycastle/util/test/Test;
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 196
    invoke-interface {p0}, Lorg/spongycastle/util/test/Test;->perform()Lorg/spongycastle/util/test/TestResult;

    move-result-object v0

    .line 198
    .local v0, "result":Lorg/spongycastle/util/test/TestResult;
    invoke-interface {v0}, Lorg/spongycastle/util/test/TestResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    invoke-interface {v0}, Lorg/spongycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v0}, Lorg/spongycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 203
    :cond_0
    return-void
.end method

.method private success()Lorg/spongycastle/util/test/TestResult;
    .locals 1

    .prologue
    .line 14
    const-string v0, "Okay"

    invoke-static {p0, v0}, Lorg/spongycastle/util/test/SimpleTestResult;->successful(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected areEqual([B[B)Z
    .locals 1
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 166
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method

.method protected areEqual([[B[[B)Z
    .locals 5
    .param p1, "left"    # [[B
    .param p2, "right"    # [[B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v1, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 131
    goto :goto_0

    .line 134
    :cond_4
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 136
    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/util/test/SimpleTest;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 140
    goto :goto_0
.end method

.method protected fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/Object;
    .param p3, "found"    # Ljava/lang/Object;

    .prologue
    .line 159
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected isEquals(II)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 56
    if-eq p1, p2, :cond_0

    .line 58
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method protected isEquals(JJ)V
    .locals 3
    .param p1, "a"    # J
    .param p3, "b"    # J

    .prologue
    .line 66
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method protected isEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method protected isEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "a"    # J
    .param p4, "b"    # J

    .prologue
    .line 88
    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 92
    :cond_0
    return-void
.end method

.method protected isEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/Object;
    .param p3, "b"    # Ljava/lang/Object;

    .prologue
    .line 99
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 116
    :cond_0
    return-void

    .line 103
    :cond_1
    if-nez p2, :cond_2

    .line 105
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 107
    :cond_2
    if-nez p3, :cond_3

    .line 109
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 112
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "a"    # Z
    .param p3, "b"    # Z

    .prologue
    .line 77
    if-eq p2, p3, :cond_0

    .line 79
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method protected isTrue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 38
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method protected isTrue(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Lorg/spongycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/util/test/TestFailedException;-><init>(Lorg/spongycastle/util/test/TestResult;)V

    throw v0

    .line 30
    :cond_0
    return-void
.end method

.method public perform()Lorg/spongycastle/util/test/TestResult;
    .locals 3

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/util/test/SimpleTest;->performTest()V

    .line 174
    invoke-direct {p0}, Lorg/spongycastle/util/test/SimpleTest;->success()Lorg/spongycastle/util/test/TestResult;
    :try_end_0
    .catch Lorg/spongycastle/util/test/TestFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/spongycastle/util/test/TestFailedException;
    invoke-virtual {v0}, Lorg/spongycastle/util/test/TestFailedException;->getResult()Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    goto :goto_0

    .line 180
    .end local v0    # "e":Lorg/spongycastle/util/test/TestFailedException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/spongycastle/util/test/SimpleTestResult;->failed(Lorg/spongycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/spongycastle/util/test/TestResult;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract performTest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
