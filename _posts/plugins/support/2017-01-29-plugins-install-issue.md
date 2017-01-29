---
layout: post
title:  'GNU ARM Eclipse plug-ins: Received fatal alert: handshake_failure'

author: Liviu Ionescu

date:   2017-01-29 11:33:00 +0300

categories:
  - support
  - plugins

tags:
  - GNU
  - ARM
  - Eclipse
  - SourceForge
  - Oracle
  - JDK

---

For historical reasons, the GNU ARM Eclipse update sites for installing new software are hosted by SourceForge, and, up to now, they successfuly handled more than 5.000.000 downloaded files for this project, but in the last months SourceForge experienced several security issues affecting GNU ARM Eclipse plug-ins users.

## Problem

In Jan. 2017 SourceForge did a change a second change in the security settings used by their download servers and mirrors. For some of the users this was transparent, but for some, the result when trying to install new software, was the following:

![Handshake failure]({{ site.baseurl }}/assets/images/2017/handshake-failure.png)

Checking the Eclipse log revealed a Java SSL exception:

```
!SUBENTRY 1 org.eclipse.equinox.p2.transport.ecf 4 1002 2017-01-28 18:48:05.200
!MESSAGE Unable to read repository at http://gnuarmeclipse.sourceforge.net/updates-test/content.xml.
!STACK 0
javax.net.ssl.SSLHandshakeException: Received fatal alert: handshake_failure
	at sun.security.ssl.Alerts.getSSLException(Unknown Source)
	at sun.security.ssl.Alerts.getSSLException(Unknown Source)
	at sun.security.ssl.SSLSocketImpl.recvAlert(Unknown Source)
	at sun.security.ssl.SSLSocketImpl.readRecord(Unknown Source)
	at sun.security.ssl.SSLSocketImpl.performInitialHandshake(Unknown Source)
	at sun.security.ssl.SSLSocketImpl.startHandshake(Unknown Source)
	at sun.security.ssl.SSLSocketImpl.startHandshake(Unknown Source)
	at org.apache.http.conn.ssl.SSLSocketFactory.connectSocket(SSLSocketFactory.java:535)
	at org.apache.http.conn.ssl.SSLSocketFactory.connectSocket(SSLSocketFactory.java:403)
	at org.apache.http.impl.conn.DefaultClientConnectionOperator.openConnection(DefaultClientConnectionOperator.java:177)
	at org.apache.http.impl.conn.ManagedClientConnectionImpl.open(ManagedClientConnectionImpl.java:304)
	at org.apache.http.impl.client.DefaultRequestDirector.tryConnect(DefaultRequestDirector.java:611)
	at org.apache.http.impl.client.DefaultRequestDirector.execute(DefaultRequestDirector.java:446)
	at org.apache.http.impl.client.AbstractHttpClient.doExecute(AbstractHttpClient.java:863)
	at org.apache.http.impl.client.CloseableHttpClient.execute(CloseableHttpClient.java:82)
	at org.eclipse.ecf.provider.filetransfer.httpclient4.HttpClientFileSystemBrowser.runRequest(HttpClientFileSystemBrowser.java:259)
	at org.eclipse.ecf.provider.filetransfer.browse.AbstractFileSystemBrowser$DirectoryJob.run(AbstractFileSystemBrowser.java:69)
	at org.eclipse.core.internal.jobs.Worker.run(Worker.java:54)
```

The problem is caused by **SourceForge mandating the use of strong encryption**, while the Oracle JDK, due to export restrictions, is not able to handle strong encryption.

## Solution

The solution is to install the [Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files](http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html). In practical terms, this means replacing two JAR files in the JRE `/lib/security` folder.

Read the instructions in the `README.txt` file and follow them carefully. Replacing the files might require administrative rights.

