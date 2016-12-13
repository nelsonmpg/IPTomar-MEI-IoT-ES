# **MEI-IoT**

<p>Projeto desenvolvido na cadeira de Engenharia de Software </p>
<p>Mestrado em Engenharia Informática - Internet das Coisas</p>

<img src="http://portal2.ipt.pt/img/logo.png" alt="Smiley face" height="40%" width="70%">

## Vagrant: Como utilizar?

### Instalar software:
* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Git BASH](https://git-scm.com/download/win) - apenas para Windows
 * Porquê? Para ter um cliente SSH (e restantes tools) que permita fazer *vagrant ssh*
* Reiniciar

Em **Windows** o caminho para a pasta dos plugins do Vagrant não pode ter espaços. Por isso:
* Criar uma pasta algures (ex: D:/Dev/HashiCorp/VagrantHome)
* Definir uma variável de ambiente VAGRANT_HOME com esse valor.
Para fazer isto na linha de comandos:
```
setx VAGRANT_HOME D:/Dev/HashiCorp/VagrantHome
```
 
Instalar plugin vagrant-vbguest, na linha de comandos:
```
vagrant plugin install vagrant-vbguest
```


### Iniciar a VM de desenvolvimento (1a vez):

#### TL;DR
```
# na pasta do projecto com (Git) BASH:
vagrant up
vagrant reload
vagrant ssh
cd /vagrant
bundle install
rails db:setup
rails server -b0.0.0.0
```

#### Versão detalhada:
Ter versão actualizada do projecto, onde já exista um Vagrantfile (caso contrário fazer pull). Abrir uma consola na pasta do projecto - se estiverem em Windows, o ideal é abrir a **Git BASH** (botão direito na pasta... "Git BASH Here"). Iniciar a VM.
```
vagrant up
```


A primeira execução demora pois vai importar (net) e descompactar a VM.

É provável que depois o *provisioning* falhe, causado por um lock ("Could not get lock /var/lib/dpkg/lock"). A solução mais fácil é voltar a carregar as configurações:

```
vagrant reload
```


Se continuar a dar o mesmo erro terão que entrar na VM, apagar o ficheiro e repetir (vagrant ssh, sudo rm /var/lib/dpkg/lock, logout, vagrant reload).


### Utilização:
Depois de configurada, podem fazer `vagrant up`, `vagrant suspend`, `vagrant status` e `vagrant destroy` para iniciar, terminar, ver o estado e destruir uma VM.

Tudo o que faziam na linha de comandos (`rails ...`, `bundle ...`, etc) é feito da mesma forma, dentro da VM. Dentro da vm a pasta "/vagrant" está ligada à vossa pasta do projecto local.

Portanto, na pasta do projecto:
```
vagrant ssh
cd /vagrant
bundle install
rails db:setup
rails server -b0.0.0.0
```
Para entrar na VM por ssh, ir para a pasta /vagrant, instalar as gems necessárias, iniciar a BD e iniciar o servidor. A app deve estar acessível em http://localhost:3000/

Toda a edição (commits, etc.) é feita na vossa máquina, tal como antes.
