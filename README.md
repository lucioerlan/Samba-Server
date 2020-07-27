<p align="center">  
    Server Samba AND Python Copy 🐧   
    </p>

<p align="center">

<img src="https://user-images.githubusercontent.com/47280551/72212480-e09aee00-34bb-11ea-95c9-21388468c9f9.jpg">
</p>

## Installation
```sh
$root@usuario: ./install_samba.sh
```
<br><br>

**Create a directory in the / home / folder called "test"** 
```sh
$root@usuario: mkdir teste
```
<br><br>


**Folder permission.**
```sh
$root@usuario: chmod -R 777 /home/caminho/teste
```
 

Obs: **777** going to be for public directories on the network. In other words, everyone will have permission.
To learn more about chmod visit: https://e-tinet.com/linux/chmod
<br><br>


**Creating group**
```sh
$root@usuario: addgroup nome_grupo
```
<br><br>



**Creating User in the system.**
```sh
$root@usuario: adduser -a fulano
```
<br><br>


**Creating a password for the same user in Samba.** 
```sh
$root@usuario: smbpasswd -a fulano
```
<br><br>



**See if the User has been created.**
```sh
$root@usuario: pdbedit -L -v  
```
![user](https://user-images.githubusercontent.com/47280551/72212317-687ef900-34b8-11ea-81cc-8a76f78f6c9d.png)
<br><br>



**Defining User in the group**
```sh
$root@usuario: adduser nome_user nome_grupo
```
<br><br>



**chown allows regular users to change groups**
```sh
$root@usuario: chown nome_grupo /home/teste
```
![names](https://user-images.githubusercontent.com/47280551/72212316-687ef900-34b8-11ea-9273-c479a4dc0e21.png)
<br><br>





### File configuration /etc/samba/smb.conf
![gnu](https://user-images.githubusercontent.com/47280551/72212315-687ef900-34b8-11ea-881f-e114f9d950f5.jpg)
<br><br>


**Final considerations**

I did this project, with the aim of helping my brother.
<br><br>

### 🔓 License
MIT © [Erlan Lúcio](https://www.linkedin.com/in/erlanlucio/)
<br><br> 
