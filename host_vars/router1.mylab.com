hostname: router1
domain_name: mylab.com

loopback:
  dum0:
    alias: dummy loopback0
    address: 10.255.0.1
    mask: /32

bgp:
  asn: 65001
  neighbor:
    - {address: 192.168.56.2, remote_as: 65000}
  networks:
    - { network: 192.168.56.0, mask: /30}
    - { network: 10.255.0.1, mask: /32}
  maxpath: 2
