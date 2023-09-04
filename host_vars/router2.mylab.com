hostname: router2
domain_name: mylab.com


loopback:
  dum0:
    alias: dummy loopback0
    address: 10.255.0.2
    mask: /32


bgp:
  asn: 65000
  neighbor:
    - {address: 192.168.56.1, remote_as: 65001}
    - {address: 192.168.56.6, remote_as: 65002}
  networks:
    - {network: 192.168.56.0, mask: /30}
    - {network: 192.168.56.4, mask: /30}
    - {network: 10.255.0.2, mask: /32}
  maxpath: 2
