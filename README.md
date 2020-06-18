# Ansible amtega.symantec_av role

This is an [Ansible](http://www.ansible.com) role to manage Symantec Antivirus for Linux.

## Role Variables

A list of all the default variables for this role is available in `defaults/main.yml`.

## Usage

This is an example playbook:

```yaml
---

- hosts: all
  roles:
    - role: amtega.symantec_av
      vars:
        symantec_av_version: 14.2.456.564
        symantec_av_state: present
        symantec_av_artifact:
          type: https
          host: http://myserver.org
          path: sav
          file: sav.zip
          timeout: 120
          validate_certs: no
          no_log: no
```

## Testing

Tests are based on [molecule with vagrant virtual machines](https://molecule.readthedocs.io/en/latest/installation.html).

The Symantec antivirus artifact is not public available, so to run the tests you have to pass the following variables:

- `ANSIBLE_INVENTORY`: path to an inventory providing the variables required by the role
- `ANSIBLE_VAULT_PASSWORD_FILE`: path to the file containing the vault password required for the previous inventory (optional)

```shell
cd amtega.symantec_av

ANSIBLE_INVENTORY=~/myinventory ANSIBLE_VAULT_PASSWORD_FILE=~/myvaultpassword molecule test
```

## License

Copyright (C) 2020 AMTEGA - Xunta de Galicia

This role is free software: you can redistribute it and/or modify it under the terms of:

GNU General Public License version 3, or (at your option) any later version; or the European Union Public License, either Version 1.2 or – as soon they will be approved by the European Commission ­subsequent versions of the EUPL.

This role is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details or European Union Public License for more details.

## Author Information

- Carlos Chedas Fernandez.
- Juan Antonio Valiño García
