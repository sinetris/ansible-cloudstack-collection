# sinetris.cloudstack.deploy Role

A brief description of the role goes here.

## Requirements

Requirements needed on the host that executes this module.

## Role Variables

### Overview

| name                                      | type | default |
| ----------------------------------------- | ---- | ------- |
| [cloudstack_version](#cloudstack_version) | str  | 4.19    |

### cloudstack_version

**Type:** `str`

**Default:** `4.19`

## Dependencies

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters
that may need to be set for other roles, or variables that are used from other roles.

## Usage Example

### Inventory

```yaml
all:
  children:
    cloudstack_infra:
      hosts:
        my-host-1:
      vars:
        cloudstack_version: "4.19"
```

### Playbook

Including an example of how to use your role.

```yaml
- name: Setup Apache CloudStack infrastructure
  hosts: cloudstack_infra
  roles:
    - role: sinetris.cloudstack.deploy
```

## License

Apache License 2.0

## Author Information

Created by Duilio Ruggiero (aka [Sinetris][sinetris-home]).

[sinetris-home]: <https://github.com/sinetris> "Sinetris"
