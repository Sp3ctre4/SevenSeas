# SevenSeas 
> Version: Coconut-Princess

Ansible based deployment for a simple Active Directory setup designed for ethical hacking training. DO NOT USE IN PRODUCTION.

## Vulnerbility List
Below is a list of vulnerabilities/attacks included in this project thus far:
- Kerberoasting
- ASREP-Roasting
- ACL Abuse
- Secrets in SMB Share
- Guest SMB Access
- LLMNR Poisoning
- Defender Disabled
- Firewalls Disabled
- Local Administrator Password Reuse
- Crackable Passwords

## Files Included

pirate-playbook.yml - the main yaml ansible playbook.
ship-manifest.yml - the inventory file which stores the connection information for all the machines.
vars-chest.yml - variable file which contains data for the network.

## Installation
> Instructions on how to confnigure and run this playbook to set up a local SevenSeas environment.

(This has been tested with a WinSrv 2019 for the DC, and Win10 for the workstations)

**Configuration**

1. Install the Windows Server that will become the domain controller using the PortRoyal password found in ship-manifest.yml
2. Install the Windows workstations using the corresponding admin username and password found in ship-manifest.yml
3. Ensure that all machines point to the Windows Server IP as a DNS server. This can be done statically or through DHCP.
4. Once installed (default is fine), open an administrator powershell session on all systems and run `winrm quickconfig`, say "Yes" to all.

**Provisioning (the ansible)**

Install ansible:
`sudo apt install ansible`

Verify connection:
`ansible -i ship-manifest.yml` 

Run the playbook:
`ansible-playbook pirate-playbook.yml -i ship-manifest.yml`

## ToDo
Add the following vulns/attacks:
- Firefox Creds

Ansible
- consider using become to handle workstation admin tasks?
- tag the DC play as "light" for a miniature version

Install
- Add python virtual environment to instructions
- Deal with cryptography depreciation warnings

## Credits
To OrangeCyberdefense's GOAD Project (for some ansible *inspiration*)
https://github.com/Orange-Cyberdefense/GOAD
