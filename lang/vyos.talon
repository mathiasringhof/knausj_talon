mode: user.vyos
-
^do configure$: "configure\n"
^do exit$: "exit\n"
^do discard$: "discard\n"
^do commit$: "commit\n"
^do save$: "save\n"
^do reboot$: "reboot\n"

^do show|show configuration: "show\n"
^show interfaces: "show interfaces\n"

wieland: "VLAN"
ethernet|either not: "ethernet"
either one: "'eth1' "
either zero: "'eth0' "
address: "address "
virtual interface [<user.number_string>]:
    insert("vif ")
    insert(user.number_string or "")
description [<user.text>]:
    insert("description '")
    insert(user.text or "")
    insert("'")
    key(left)
rule <user.number_string>:
    insert("rule ")
    insert(user.number_string)
    insert(" ")
^do set rule <user.number_string>:
    insert("set rule ")
    insert(user.number_string)
    insert(" ")
copy rule <user.number_string> to [rule]:
    insert("copy rule ")
    insert(user.number_string)
    insert(" to rule ")
protocol$:
    insert("protocol ''")
    key(left)
protocol tcp: "protocol 'tcp' "
protocol both: "protocol 'tcp_udp' "
protocol all: "protocol 'all' "
protocol udp: "protocol 'udp' "
protocol icmp: "protocol 'icmp' "
source group: "source group "
source address:
    insert("source address ''")
    key(left)
destination address:
    insert("destination address ''")
    key(left)
source port [<user.number_string>]:
    insert("source port '")
    insert(user.number_string or "")
    insert("'")
destination port [<user.number_string>]:
    insert("destination port '")
    insert(user.number_string or "")
    insert("'")
    key(left)

# Interfaces
^set interfaces ethernet: "set interfaces ethernet "
firewall in|firewall in name: "firewall in name "
firewall local|firewall local name: "firewall local name "
firewall out|firewall out name: "firewall out name "

# Firewall rules
^set firewall name: "set firewall name "
^edit firewall name: "edit firewall name "
action drop$: "action 'drop'"
action accept$: "action 'accept'"
action reject$: "action 'reject'"
default action drop$: "default-action 'drop'"
default action accept$: "default-action 'accept'"
default action reject$: "default-action 'reject'"
state established enable$: "state established 'enable'"
state related enable$: "state related 'enable'"
state new enable$: "state new 'enable'"


# NAT
^set nat source: "set nat source "
^set nat destination: "set nat destination "
outbound interface: "outbound-interface "
inbound interface: "inbound-interface "
translation address$:
    insert("translation address ''")
    key(left)
translation port [<user.number_string>]:
    insert("translation port '")
    insert(user.number_string or "")
    insert("'")
    key(left)