# terraform-aws-tutorial

Basado en el tutorial que puede encontrarse en https://levelup.gitconnected.com/terraform-hello-world-b4985162cff2.

He modificado algunas cosas para facilitar el uso de este material en clases. También incluyo a continuación algo de ayuda para jugar con Terraform aún cuando no se cuenta con la posibilidad de instalar le harraminta localmente. Se logra con Docker y la imagen oficial `hashicorp/terraform:light`.

En caso de no poder instalar Docker, este código ha sido probado exitosamente en https://labs.play-with-docker.com/.

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
