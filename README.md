What is Impacket?
=================

Impacket is a collection of Python classes for working with network
protocols. Impacket is focused on providing low-level
programmatic access to the packets and for some protocols (e.g.
SMB1-3 and MSRPC) the protocol implementation itself.
Packets can be constructed from scratch, as well as parsed from 
raw data, and the object oriented API makes it simple to work with 
deep hierarchies of protocols. The library provides a set of tools
as examples of what can be done within the context of this library.

A description of some of the tools can be found at:
https://www.secureauth.com/labs/open-source-tools/impacket

What protocols are featured?
----------------------------

 * Ethernet, Linux "Cooked" capture.
 * IP, TCP, UDP, ICMP, IGMP, ARP.
 * IPv4 and IPv6 Support.
 * NMB and SMB1, SMB2 and SMB3 (high-level implementations).
 * MSRPC version 5, over different transports: TCP, SMB/TCP, SMB/NetBIOS and HTTP.
 * Plain, NTLM and Kerberos authentications, using password/hashes/tickets/keys.
 * Portions/full implementation of the following MSRPC interfaces: EPM, DTYPES, LSAD, LSAT, NRPC, RRP, SAMR, SRVS, WKST, SCMR, BKRP, DHCPM, EVEN6, MGMT, SASEC, TSCH, DCOM, WMI, OXABREF, NSPI, OXNSPI.
 * Portions of TDS (MSSQL) and LDAP protocol implementations.


Getting Impacket
================

* [Current and past releases](https://github.com/SecureAuthCorp/impacket/releases)
* [Trunk](https://github.com/SecureAuthCorp/impacket)

Setup
=====

Quick start
-----------

Grab the latest stable release, unpack it and run `python3 -m pip install .` (`python2 -m pip install .` for Python 2.x) from the directory where you placed it. Isn't that easy?

Installing
----------


Docker Support
--------------

Build Impacket's image from this cloned repo:

      docker build -t "impacket-adcs" .

Using Impacket's image (starts in the examples/ dir):

      docker run -it --rm impacket-adcs ntlmrelayx.py -h
      docker run -it --rm -p 445:445 -p 80:80 -p 443:443 -v `pwd`:/opt/impacket/examples impacket-adcs ntlmrelayx.py

Licensing
=========

This software is provided under a slightly modified version of
the Apache Software License. See the accompanying [LICENSE](LICENSE) file for
more information.

SMBv1 and NetBIOS support based on Pysmb by Michael Teo.

Disclaimer
==========

The spirit of this Open Source initiative is to help security researchers,
and the community, speed up research and educational activities related to
the implementation of networking protocols and stacks.

The information in this repository is for research and educational purposes
and not meant to be used in production environments and/or as part
of commercial products.

If you desire to use this code or some part of it for your own uses, we
recommend applying proper security development life cycle and secure coding
practices, as well as generate and track the respective indicators of
compromise according to your needs.


Contact Us
==========

Whether you want to report a bug, send a patch, or give some suggestions
on this package, drop us a few lines at oss@secureauth.com.

For security-related questions check our [security policy](SECURITY.md).
