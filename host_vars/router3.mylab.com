hostname: router3
domain_name: mylab.com


loopback:
  dum0:
    alias: dummy loopback0
    address: 10.255.0.3
    mask: /32

bgp:
  asn: 65002
  neighbor:
    - {address: 192.168.56.5, remote_as: 65000}
  networks:
    - {network: 192.168.56.4, mask: /30}
    - {network: 10.255.0.3, mask: /32}
  maxpath: 2
