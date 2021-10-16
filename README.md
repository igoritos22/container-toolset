# Container Network Tools
Container com uma série de ferramentas pré instaladas para debug/troubleshoting no seu cluster K8S

# Como Usar
Primeiramente você precisa construir a imagem do seu container e depois fazer o push para um repositório de sua preferencia, que podem ser:
- [`DockerHub`]
- [`AWS ECR`]
- [`Azure ACR`]

Após isso é necessário alterar o parametro --image do seu manifesto kubernetes:

```bash
spec:
  containers:
  - image: <seu_repositorio_de_imagens:tag>
    name: toolpod
```

Feito isso basta executar o seu tooset POD

```bash
kubectl apply -f toolset.yaml
```

## Sobre o container
Após você fazer o deploy desse POD, você terá acesso a uma série de ferramentas. Isso inclui:


 - [`vim`](https://github.com/vim/vim) 
 - [`screen`](https://www.gnu.org/software/screen/) 
 - [`curl`](https://github.com/curl/curl) 
 - [`jq`](https://github.com/stedolan/jq) 
 - [`dnsutils`](https://packages.debian.org/stretch/dnsutils)
 - [`iputils-ping`](https://packages.debian.org/stretch/iputils-ping)
 - [`tcpdump`](https://www.tcpdump.org/)
 - [`traceroute`](https://linux.die.net/man/8/traceroute)
 - [`net-tools`](https://packages.debian.org/stretch/net-tools)
 - [`netcat`](https://linux.die.net/man/1/nc)
 - [`iproute2`](https://wiki.linuxfoundation.org/networking/iproute2)
 - [`strace`](https://github.com/strace/strace)
 - [`docker`](https://docs.docker.com/engine/reference/commandline/cli/) 
 - [`dstat`](http://dag.wiee.rs/home-made/dstat/)
 - [`htop`](https://hisham.hm/htop/) 
 - [`atop`](https://www.atoptool.nl/)


## Recomendação de Segurança:
Sempre construa a sua própria imagem. Este repositório deve ser encarado mais como um guia.
Sempre faça scan na imagem dos containers que rodam no seu cluster!!

