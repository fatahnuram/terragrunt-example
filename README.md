# terragrunt-example

Terragrunt code example for multiple target infra environments.

## Provisioning all environments

To provision all environments, just run command below on the root project directory:

```bash
terragrunt run-all init
terragrunt run-all plan
terragrunt run-all apply
```

## Provisioning infra-one only

Below are steps to provision `infra-one` only.

### both environments

To provision both `dev` and `prod`, can run command below:

```bash
cd infra-one/
terragrunt run-all init
terragrunt run-all plan
terragrunt run-all apply
```

### dev

To provision only `dev`, can run command below:

```bash
cd infra-one/dev/
terragrunt init
terragrunt plan
terragrunt apply
```

### prod

To provision only `prod`, can run command below:

```bash
cd infra-one/prod/
terragrunt init
terragrunt plan
terragrunt apply
```

## Provisioning infra-two only

Below are steps to provision `infra-two` only.

### both environments

To provision both `dev` and `prod`, can run command below:

```bash
cd infra-two/
terragrunt run-all init
terragrunt run-all plan
terragrunt run-all apply
```

### dev

To provision only `dev`, can run command below:

```bash
cd infra-two/dev/
terragrunt init
terragrunt plan
terragrunt apply
```

### prod

To provision only `prod`, can run command below:

```bash
cd infra-two/prod/
terragrunt init
terragrunt plan
terragrunt apply
```

**Note**: both `infra-one` and `infra-two` will produce the same infrastructure, they only use different code style
