# niployments-deploy-action

Action used by NIAEFEUP projects to publish images built from them to an internal Image Registry

## Table of Contents
- [niployments-deploy-action](#niployments-deploy-action)
  - [Table of Contents](#table-of-contents)
  - [Inputs](#inputs)
    - [project\_name:](#project_name)
    - [repository\_name:](#repository_name)
    - [docker\_context:](#docker_context)
    - [docker\_dockerfile:](#docker_dockerfile)
    - [NIPLOYMENTS\_REGISTRY\_URL:](#niployments_registry_url)
    - [NIPLOYMENTS\_REGISTRY\_USERNAME:](#niployments_registry_username)
    - [NIPLOYMENTS\_REGISTRY\_PASSWORD:](#niployments_registry_password)
  - [Example](#example)
  - [License](#license)


## Inputs

The inputs to this action as described in the action manifest are:

### project_name:
- **Description**: The name of the Harbor project under which to store this artifact. For further information see [the relevant documentation](https://goharbor.io/docs/2.10.0/working-with-projects/).
- **Required**: `false`
- **Default**: `niaefeup`

### repository_name:
- **Description**: The name of the Harbor repository under which to store this artifact. For further information see [the relevant documentation](https://goharbor.io/docs/2.10.0/working-with-projects/working-with-images/repositories/).
- **Required**: `false`

### docker_context:
- **Description**: The context Docker uses to build this image.
- **Required**: `false`

### docker_dockerfile:
- **Description**: The name of the Dockerfile used to build this image.
- **Required**: `false`
- **Default**: `Dockerfile-prod`



> [!WARNING]  
> Due to limitations in Composite Action runners, some contexts (namely `vars` and `secrets`) are not available to use inside the action, as seen [here](https://github.com/NIAEFEUP/niployments-deploy-action-test/actions/runs/8588451113). `v1` will include those values as inputs while this is not fixed. See [this link](https://github.com/orgs/community/discussions/49689) for further details.

### NIPLOYMENTS_REGISTRY_URL:
- **Description**: The URL of the Image Registry deployed in the NIployments cluster.
- **Required**: `true`

### NIPLOYMENTS_REGISTRY_USERNAME:
- **Description**: The username to use when authentication against the Image Registry deployed in the NIployments cluster.
- **Required**: `true`

### NIPLOYMENTS_REGISTRY_PASSWORD:
- **Description**: The password to use when authentication against the Image Registry deployed in the NIployments cluster.
- **Required**: `true`

## Example

Sample usage of this action:
```yaml
name: Deploy

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Upload to NIployments register
      uses: NIAEFEUP/push-to-niployments@main
      with:
        project_name: my-project
        repository_name: my-repository
        NIPLOYMENTS_REGISTRY_URL: ...
        NIPLOYMENTS_REGISTRY_USERNAME: ...
        NIPLOYMENTS_REGISTRY_PASSWORD: ...
```

## License

The code in this repository is licensed under the MIT license. See the [LICENSE](./LICENSE) file for details