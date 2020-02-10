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

Tests are based on vagrant virtual machines. You can setup vagrant engine quickly using the playbook `files/setup.yml` available in the role [amtega.vagrant_engine](https://galaxy.ansible.com/amtega/vagrant_engine).

The Symantec antivirus artifact is not public available, so need to setup in the inventory the variables:

- `symantec_av_version`
- `symantec_av_artifact`

Once you have vagrant, you can run the tests with the following commands:

```shell
$ cd amtega.symantec_av/tests
$ ansible-playbook main.yml
```

## License

Copyright (C) 2019 AMTEGA - Xunta de Galicia

This role is free software: you can redistribute it and/or modify it under the terms of:

GNU General Public License version 3, or (at your option) any later version; or the European Union Public License, either Version 1.2 or – as soon they will be approved by the European Commission ­subsequent versions of the EUPL.

This role is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details or European Union Public License for more details.

## Author Information

- Carlos Chedas Fernandez.
- Juan Antonio Valiño García
