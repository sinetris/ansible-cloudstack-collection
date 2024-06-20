# Ansible Collection to manage Apache CloudStack infrastructure

This repository contains the `sinetris.cloudstack` Ansible Collection.

<!-- markdownlint-disable -->
<!--start requires_ansible-->
## Ansible version compatibility

This collection has been tested against following Ansible versions: **>=2.16.0**.

For collections that support Ansible 2.9, please ensure you update your `network_os` to use the
fully qualified collection name (for example, `cisco.ios.ios`).
Plugins and modules within a collection may be tested with only specific Ansible versions.
A collection may contain metadata that identifies these versions.
PEP440 is the schema used to describe the versions of Ansible.
<!--end requires_ansible-->

<!--start collection content-->
### Hello_world filter plugins
filter plugin.

Name | Description
--- | ---
sinetris.cloudstack.hello_world|Returns Hello message.

<!--end collection content-->
<!-- markdownlint-restore -->

## Development

> **NOTE:** If you are on macOS, it's better to use [Colima](https://github.com/abiosoft/colima)
> instead of [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/).

Inside the Dev Container instance.

```sh
# Install pre-commit hook (required only once)
pre-commit install
# Run pre-commit for all files (to ensure there are no errors)
pre-commit run --all-files
# Ensure generated documentation is up to date
collection_prep_add_docs -p ./
# List tests available environments
tox list --ansible --conf tox-ansible.ini
# Run sanity tests on all available environments
tox --ansible -f sanity --conf tox-ansible.ini
# Run all tests on all available environments
tox --ansible -p auto --conf tox-ansible.ini
```

## Licensing

Apache License 2.0 or later.

See [LICENSE](LICENSE).
