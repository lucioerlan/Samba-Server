<p align="center">  
    Server Samba AND Python Copy 🐧   
    </p>

<p align="center">

<img src="https://user-images.githubusercontent.com/47280551/72212480-e09aee00-34bb-11ea-95c9-21388468c9f9.jpg">
</p>

## Instalação
```sh
$root@usuario: ./install_samba.sh
```
<br><br>

**Crie um diretório na pasta /home/ chamado "teste"** 
```sh
$root@usuario: mkdir teste
```
<br><br>


**Permissão da pasta.**
```sh
$root@usuario: chmod -R 777 /home/caminho/teste
```
 

Obs: **777** vai ser para diretórios públicos na rede. Ou seja todos irão ter permissão.
Para saber mais sobre chmod acesse: https://e-tinet.com/linux/chmod
<br><br>


**Criando grupo**
```sh
$root@usuario: addgroup nome_grupo
```
<br><br>



**Criando Usuário no sistema.**
```sh
$root@usuario: adduser -a fulano
```
<br><br>


**Criando uma senha do mesmo usuário no Samba.** 
```sh
$root@usuario: smbpasswd -a fulano
```
<br><br>



**Veja se o Usuário foi criado.**
```sh
$root@usuario: pdbedit -L -v  
```
![user](https://user-images.githubusercontent.com/47280551/72212317-687ef900-34b8-11ea-81cc-8a76f78f6c9d.png)
<br><br>



**Definindo Usuário no grupo**
```sh
$root@usuario: adduser nome_user nome_grupo
```
<br><br>



**chown permite a usuários regulares alterar grupos**
```sh
$root@usuario: chown nome_grupo /home/teste
```
![names](https://user-images.githubusercontent.com/47280551/72212316-687ef900-34b8-11ea-9273-c479a4dc0e21.png)
<br><br>





### Configuração do arquivo /etc/samba/smb.conf
![gnu](https://user-images.githubusercontent.com/47280551/72212315-687ef900-34b8-11ea-881f-e114f9d950f5.jpg)
<br><br>


**Consideraçoes Finais**

Eu fiz esse projeto, com o objetivo de ajudar o meu irmão.
<br><br>

### 🔓 Licença 
MIT © [Erlan Lúcio](https://br.linkedin.com/in/erlan-lucio-760745183)
<br><br> 
