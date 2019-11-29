# Ansible amtega.symantec_av role

This is an [Ansible](http://www.ansible.com) role which installs and uninstalls
Symantec Antivirus for Linux.

## Requirements

[Ansible 2.7+](http://docs.ansible.com/ansible/latest/intro_installation.html)

## Role Variables

A list of all the default variables for this role is available in `defaults/main.yml`.

## Filters

<!-- A description of the filters provided by the role should go here. For example: -->

## Modules

## Dependencies

- [amtega.check_platform](https://galaxy.ansible.com/amtega/check_platform)
- [amtega.proxy_client](https://galaxy.ansible.com/amtega/proxy_client)
- [amtega.packages](https://galaxy.ansible.com/amtega/packages)

## Usage

This is an example playbook:

```yaml
---

- hosts: all
  roles:
    - role: amtega.symantec_av
      vars:
        symantec_av_state: "present"
        symantec_av_archive_rpm: "SEP_14.2.4815.1100_RPM.zip"
        symantec_av_archive_dpkg: "SEP_14.2.4815.1100_DPKG.zip"      
```

## Testing

Tests are based on Vagrant.

Once you have vagrant, you can run the tests with the following commands:

```shell
$ cd amtega.symantec_av/tests
$ ansible-playbook main.yml

## License

Copyright (C) 2019 AMTEGA - Xunta de Galicia

This role is free software: you can redistribute it and/or modify it under the terms of:

GNU General Public License version 3, or (at your option) any later version; or the European Union Public License, either Version 1.2 or – as soon they will be approved by the European Commission ­subsequent versions of the EUPL.

This role is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details or European Union Public License for more details.

## Author Information

- Carlos Chedas Fernandez.
- <!-- author _name 2 -->.
- <!-- author _name N -->.
