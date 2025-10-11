# SevenSeas 
> Version: Coconut-Princess
Ansible based deployment for a simple Active Directory setup designed for ethical hacking training. DO NOT USE IN PRODUCTION.

## Vulnerbility List
Below is a list of vulnerabilities/attacks included in this project thus far:
- haha none

## Files Included

## Installation
> Instructions on how to confnigure and run this playbook to set up a local SevenSeas environment.

**Configuring the Machines**


**Provisioning (the ansible)**

Install ansible:
`sudo apt install ansible`

Verify connection:
`ansible -i ship-manifest.yml` 

Run the playbook:
`ansible-playbook pirate-playbook.yml -i ship-manifest.yml`

## ToDo
Add the following vulns/attacks:
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

Ansible
- consider using become to handle workstation admin tasks?
- tag the DC play as "light" for a miniature version

## Credits
