# terraform-aws-tutorial

## Configuración previa

Setear variables de entornos

```bash
export AWS_ACCESS_KEY_ID=xxxxx
export AWS_SECRET_ACCESS_KEY=xxxxx
export AWS_DEFAULT_REGION=us-east-2
```

Ejecutamos Terraform con la ayuda de Docker. Primero INIT:

```bash
docker run --rm -it -v $PWD:/data -w /data -e \
 AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e \
 AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e \
 AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
 hashicorp/terraform:light init
```

Luego PLAN

```bash
docker run --rm -it -v $PWD:/data -w /data -e \
 AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e \
 AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e \
 AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
 hashicorp/terraform:light plan
```

Finalmente APPLY

```bash
docker run --rm -it -v $PWD:/data -w /data -e \
 AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e \
 AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e \
 AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
 hashicorp/terraform:light apply
```

Y NO olvidar DESTROY cuando ya hayamos terminado las pruebas.

```bash
docker run --rm -it -v $PWD:/data -w /data -e \
 AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e \
 AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -e \
 AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
 hashicorp/terraform:light destroy
```
