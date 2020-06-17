Guia com mais de 500 comandos
do Linux (Explicados)


Por: Bruno Andrade (GNU/Linux - Brasil)


São Paulo
2016


Introdução

Neste documento, irá encontrar mais de 500 comandos via terminal do Linux. Todos bem explicados da forma como funcionam e o que executam. Totalmente em português, com uma linguagem simples e objetiva que pode ser compreendida por todos os usuários (desde o nível mais simples ao avançado).

Esta é uma oportunidade de não usar somente a interface gráfica para executar os comandos, e sim ter o domínio do terminal. Aumentando ainda mais o seu conhecimento no universo Linux. Afinal, em certos momentos, precisamos de um conhecimento a mais para executarmos determinadas tarefas.

O Linux já está presente nas grandes empresas, e dominá-lo significa um diferencial a mais com relação a outros colaboradores da empresa.

Mesmo com a prática diária, é improvável que guarde todos os comandos do terminal, porém a ideia desta lista é trazer os comandos primordiais para o terminal Linux, pois sua lista é vasta.

Esta apostila é de distribuição gratuita e pode ser compartilhada e baixada por qualquer pessoa, afinal o objetivo principal é sua divulgação e distribuição, sem qualquer fim lucrativo.

Útil para iniciantes; curiosos; de nível intermediário procurando se aprofundar e para quem já é avançado e deseja relembrar algum dos comandos.

Porém, antes de executarem os comandos no terminal, lembrem-se da famosa frase do modo root: "Com grandes poderes, vem grandes responsabilidades" - Stan Lee


Sumário

Introdução ......................................................................................................................................................................... 2
1.

Guia de referência – Lista de comandos para Linux ................................................................................................. 4
1.1.

Conhecendo a hierarquia do sistema ............................................................................................................... 4
1.2.

Atalhos Globais ................................................................................................................................................. 5
2.

Dicas úteis para o aprendizado ................................................................................................................................. 5
3.

Lista de comandos..................................................................................................................................................... 6
4.

Guia de referência completo – Comandos avançados do terminal Linux .............................................................. 10
4.1.

Informações do sistema Linux ........................................................................................................................ 10
4.2.

Desligar (Reinicialização do sistema ou logout) .............................................................................................. 12
4.3.

Arquivos e diretórios ....................................................................................................................................... 12
4.4.

Encontrar arquivos .......................................................................................................................................... 14
4.5.

Trabalhando com sistema de arquivos ........................................................................................................... 15
4.6.

Espaço em disco .............................................................................................................................................. 16
4.7.

Usuários e grupos............................................................................................................................................ 16
4.8.

Permissões de arquivos (+ = Adiciona e - = Remove permissões) .................................................................. 17
4.9.

Atributos especiais de arquivo: (+ = Adiciona e - = Remove permissões) ...................................................... 18
4.10.

Arquivos e arquivos compactados .............................................................................................................. 19
4.11.

Pacotes RPM (Red Hat, Fedora e derivados) .............................................................................................. 20
4.12.

Pacotes YUM Updater (Red Hat, Fedora e derivados) ................................................................................ 22
4.13.

Pacotes DEB (Debian, Ubuntu e derivados) ................................................................................................ 22
4.14.

Atualizador de pacotes APT (Debian, Ubuntu e derivados) ........................................................................ 23
4.15.

Exibir o conteúdo de um arquivo ................................................................................................................ 23
4.16.

Manipulação de texto ................................................................................................................................. 24
4.17.

Estabelecer o formato de conversão de arquivos ...................................................................................... 25
4.18.

Análise de sistemas de arquivos ................................................................................................................. 25
4.19.

Formatar sistemas de arquivos ................................................................................................................... 25
4.20.

Backups ....................................................................................................................................................... 26
4.21.

CD-ROM ....................................................................................................................................................... 27
4.22.

Redes (LAN e Wi-Fi) ..................................................................................................................................... 28
4.23.

Redes Microsoft Windows (SAMBA) ........................................................................................................... 29
4.24.

Firewall (iptables) ........................................................................................................................................ 29
4.25.

Monitoramento e depuração ...................................................................................................................... 30
4.26.

Dicas e comandos úteis ............................................................................................................................... 31
5.

Bibliografia .............................................................................................................................................................. 32
6.

Redes sociais ........................................................................................................................................................... 32


1. Guia de referência – Lista de comandos para Linux

1.1. Conhecendo a hierarquia do sistema

/bin/
Binários principais dos usuários.

/boot/
Arquivos do sistema de Boot
/dev/
Arquivos de dispositivos
/etc/
Arquivos de configuração do sistema
/home/
Diretório dos usuários comuns do sistema.

/lib/
Bibliotecas essenciais do sistema e os módulos do kernel.

Diretório do root
/media/
Diretório de montagem e dispositivos.

A primeira
hierarquia do
Diretório de montagem de dispositivos - mesmo que
/mnt/
sistema de
"media".

arquivos ou
somente:
Instalação de programas não oficiais da distribuição ou
/opt/
por conta do usuário.

/
Armazena arquivos executáveis que representam
/sbin/
comandos administrativos. Exemplo: shutdown
Hierarquia primária
/srv/
Diretório para dados de serviços fornecidos pelo sistema.

/tmp/
Diretório para arquivos temporários.

Segunda hierarquia do sistema, onde ficam os usuários
/usr/
comuns do sistema e programas.

/var/
Diretório com arquivos variáveis gerados pelos programas do
sistema. Exemplo: logs, spool de impressoras, e-mail e cache.

/root/
Diretório do usuário root - O usuário root tem o total poder
sobre o sistema. Podendo instalar, desinstalar e configurar.

/proc/
Diretório virtual controlado pelo Kernel com
configuração total do sistema.


4


1.2. Atalhos Globais

Ctrl+C
• Cancela o comando atual em funcionamento.

Ctrl+Z
• Pausa o comando atual, retorna com "fg" em
primeiro plano Linux ou "bg" em segundo plano.

Ctrl+D
• Faz o logout da sessão atual (similar ao comando
"exit").

Ctrl+W
• Apaga uma palavra na linha atual.

Ctrl+U
• Apaga a linha inteira.

Ctrl+R
• Tecle para Exiber um comando recente.

!!

• Repete o último comando.

exit
• Faz o logout da sessão atual.


2. Dicas úteis para o aprendizado

1. Digite qualquer comando seguido de “–help” (Dois traços e a palavra help) para ver a uma descrição detalhada do comando.

(EX: “wget –help” ):

2. Outra forma de conseguir documentação oficial dos comandos Linux é o comando man (manual), Digite man seguido do nome do comando que você precisa de informação.

(EX: man wget)

3. Se por algum motivo você preferir guardar as informações do man (Manual) de algum comando em um pendrive ou smartphone em PDF para estudos complementares utilize este comando
(EX: man -t wget | ps2pdf – wget.pdf)


5


3. Lista de comandos

ls
Lista de diretórios.


ls -al
Lista de diretórios com exibição de arquivos ocultos.


cd dir
Muda do diretório atual para o especificado (substituir a variável dir pelo nome da pasta).


cd
Muda para o diretório /home (arquivos pessoais).


Pwd
Exibe o caminho do diretório atual.


mkdir dir*
Cria um diretório especificado (substituir a variável dir pelo nome da pasta).


rm arq
Apaga o arquivo especificado (substituir a variável arq pelo nome do arquivo que se quer excluir).


rm -r dir
Apaga o diretório especificado (substituir a variável dir pelo nome da pasta).


rm -f arq
Apaga o arquivo especificado forçadamente (-f de force) (substituir a variável arq pelo nome do arquivo que se quer excluir).


rm -rf dir
Apaga o diretório especificado forçadamente (substituir a variável dir pelo nome da pasta). Utilize esse comando com extrema atenção!


cp -r arq1 arq2
Copia o “arquivo1” para o “arquivo2” (substituir a variável arq pelo nome do arquivo).


cp -r dir1 dir2
Copia o “diretório1” para o “diretório2”; cria o “diretório2” caso não exista (substituir a variável dir pelo nome do diretório).


mv arq1 arq2
Dupla função: Pode ser usado para renomear ou mover o “arquivo1” para “arquivo2”. Se o arquivo2 for um diretório existente, move “arquivo1” para dentro do diretório “arquivo2” (substituir a variável arq
pelo nome do arquivo).


ln -s arq link
Cria um link simbólico, link (atalho) para o arquivo (substituir a variável arq pelo nome do arquivo e link
pelo nome que terá o atalho).


6

touch arq
Cria ou atualiza o arquivo (substituir a variável arq pelo nome do arquivo).


cat > arq
Direciona a entrada padrão para um arquivo (substituir a variável arq pelo nome do arquivo).


more arq
Exibe o conteúdo de um arquivo (substituir a variável arq pelo nome do arquivo).


head arq
Exibe as primeiras 10 linhas de um arquivo (substituir a variável arq pelo nome do arquivo).


tail arq
Exibe as últimas 10 linhas de um arquivo (substituir a variável arq pelo nome do arquivo).


tail -f arq
Exibe o conteúdo de um arquivo enquanto ele é atualizado (aumenta de tamanho), iniciando com as últimas 10 linhas (substituir a variável arq pelo nome do arquivo).


ps
Exibe os processos dos usuários ativos em tempo real.


top
Exibe todos os processos rodando em tempo real.


kill pid
Mata um processo específico pelo número ID (substituir pid pelo número do processo).


killall proc
Mata todos os processos com o nome especificado proc , de processos (substituir proc pelo nome do processo).


bg
Lista trabalhos parados ou em segundo plano, ou pode continua-los também.


fg
Traz o trabalho mais recente para o primeiro plano.


fg trab
Traz o trabalho “trab” para o primeiro plano (substituir trab pelo nome do processo).


chmod octal arq
Muda as permissões do arquivo “arq” para octal, que pode ser especificada separadamente para “usuário”,
“grupo” e “outros”. Os valores em octal são representados abaixo:

• 4 – leitura (r, de read).

• 2 – gravação (w, de write).

• 1 – execução (x, de execute)

Explanação: Para definir permissões, somam-se os valores acima. Por exemplo, para atribuir ao dono do arquivo (“usuário”) acesso total de leitura (r), gravação (w) e execução (x), basta somar o valor octal 4 + 2
+ 1 = 7. Supondo que você queira limitar o acesso para membros do “grupo”, permitindo apenas a leitura e gravação, basta somar 4 + 2 = 6. Reunindo os dois exemplos citados, ficaria: chmod 760 (“r” para usuário, “w” para grupo e “0” para outros ou “rw-“).


7

Outros exemplos:

• chmod 777
o leitura (r), gravação (w) e execução (x) para todos (“usuário”, “grupo” e “outros”).

• chmod 755
o “rwx” para o “dono” (usuário), “rw” para o “grupo” e “outros”.


Para mais informações, digite no terminal: man chmod

ssh usuário@host
Conecta ao host como usuário (exemplo: ssh gnulinuxbrasil@meuservidor).


ssh -p porta usuário@host
Conecta ao host na porta especificada (substituir “porta” pelo número da porta configurada).


ssh-copy-id usuário@host
Adiciona a sua chave para o host e usuário daquele host; serve para ativar logins sem senha com uso de chaves.


grep sequência arquivos
Pesquisa pela sequência nos arquivos (substituir a sequência e arquivos pelos valores correspondentes à pesquisa).


grep -r sequência dir
Pesquisa recursivamente pela sequência LinuxLinuxLinux no diretório dir

comando | grep sequência
Pesquisa pela sequência na saída do comando (substituir comando e sequência de acordo com os valores a serem buscados).


locate arq
Encontra todas as instâncias de um arquivo (substituir a variável arq pelo nome do arquivo).


date
Exibe a data e hora atual.


cal
Exibe um calendário do mês atual.


uptime
Exibe o tempo de atividade do sistema.


w
Exibe quem está online.


whoami
Exibe como quem você está logado.


finger
Usuário Exibe informações do usuário.


uname -a
Exibe informações do kernel.


cat /porc/cpuinfo
Exibe informações da CPU.



8

cat /proc/meminfo
Exibe informações da memória.


man comando
Abre o manual do comando especificado (substituir a variável comando pelo nome do comando que se quer conhecer).


df
Exibe o uso do disco.


du
Exibe o uso do espaço em um diretório.


free
Exibe o uso da memória e swap.


whereis aplicação
Exibe possíveis localizações do aplicativo (substituir aplicação pelo nome do programa).


which aplicação
Exibe que a aplicação irá rodar por omissão (substituir aplicação pelo nome do programa).


tar cf pacote.tar arqs
Cria um pacote TAR (nomeado pacote .tar) com os arquivos especificados (substituir a variável arqs pelo nome do arquivo).


tar xf pacote.tar
Extrai os arquivos de “pacote.tar” (substituir a variável pacote .tar pelo nome do arquivo).


tar czf pacote.tar.gz arqs
Cria um pacote TAR (nomeado pacote .tar.gz) com compressão GZip.


tar xzf pacote.tar.gz
Extrai um pacote TAR (nomeado pacote .tar.gz) com compressão GZip.


tar cjf pacote.tar.bz2
Cria um pacote TAR (nomeado pacote .tar.bz2) com compressão BZip2.


tar xjf pacote.tar.bz2
Extrai um pacote TAR (nomeado pacote .tar.gz) com compressão BZip2.


gzip arq
Compacta um arquivo e o renomeia para arq.gz (substituir a variável arq pelo nome do arquivo).


gzip -d arq.gz
Descompacta arq.gz para um arquivo (substituir a variável arq .gz pelo nome do arquivo).


ping host
Envia um pacote ICMP (ping) para o host e Exibe o resultado (substituir a variável host pelo domínio de um site ou o número IP).


whois domínio
Retorna informações sobre o domínio (substituir a variável domínio pelo endereço de um site ou o número IP).


dig host
Retorna informações de DNS para o domínio (substituir a variável host pelo domínio de um site ou o número IP).

9


ListAllCommands | grep searchstr
Instalação a partir do código fonte; os comandos devem ser digitados na sequência em um terminal, um de cada vez.


dig -x host
Exibe o retorno reverso para um host (substituir a variável host pelo domínio de um site ou o número IP).


wget arq
Faz o download do arquivo “arq” (substituir a variável arq pelo endereço online do arquivo).


wget -c arq
Continua o download interrompido de um arquivo “arq” (substituir a variável arq pelo endereço online do arquivo).


Comandos de instaladores
• ./configure
• make
• make install

dpkg -i pacote.deb
Instala um pacote DEB (distros Debian) (substituir a variável pacote .deb pelo nome do pacote de programa).


rpm -Uvh pacote.rpm
Instala um pacote RPM (Distros que utilizam RPM) (substituir a variável pacote .rpm pelo nome do pacote de programa).


4. Guia de referência completo – Comandos avançados do terminal Linux

4.1. Informações do sistema Linux

arch
Exibe a arquitetura da máquina (1).


uname -m
Exibe a arquitetura da máquina (2).


uname -r
Exibe versão do kernel usada.


dmidecode -q
Exibe os componentes do sistema (hardware).


hdparm -i /dev/hda
Exibe as características de um disco rígido.


hdparm -tT /dev/das
Executa teste de leitura em um disco rígido.


cat /proc/cpuinfo
Exibe informações da CPU.



10

cat /proc/interrupts
Exibe interrupções.


cat /proc/meminfo
Verifica a utilização de memória.


cat /proc/swaps:df -h
Exibe o tamanho dos arquivos e diretórios ordenados por tamanho.


ls -lSr |more
Estima o espaço usado pelo diretório ‘dir1’.


du -sh dir1
Exibe o tamanho dos arquivos e diretórios ordenados por tamanho.


du -sk * | sort -rn
Exibe o espaço usado por pacotes .rpm instalados e organizados pelo tamanho (Fedora, Red Hat e outros).


rpm -q -a –qf ‘%10{SIZE}t%{NAME}n’ | sort -k1,1n
Exibe o espaço usado por pacotes instalados, organizado pelo tamanho (Debian, Ubuntu e outros).


dpkg-query -W -f=’${Installed-Size;10}t${Package}n’ | sort -k1,1n
Exibe arquivos de swap.


cat /proc/version
Exibe a versão do kernel.


cat /proc/net/dev
Exibe estatísticas e adaptadores de rede.


cat /proc/mounts
Exibe o sistema de arquivos montado.


lspci -tv
Exibe os dispositivos PCI.


lsusb -tv
Exibe os dispositivos USB.


date
Exibe a data do sistema.


cal 2016
Visualiza o calendário de 2016.


cal 06 2016
Exibe o calendário para o mês de junho de 2016.


date 041217002016.00
Coloca (estado, ajustar) data e hora.

11


clock -w
Salva as alterações para a data na BIOS.


4.2. Desligar (Reinicialização do sistema ou logout)

shutdown -h now
Desliga o sistema (1).


shutdown -h minutos
Desliga o sistema de acordo com o minuto selecionado (EX.: shutdown -h 30 , desliga em 30 minutos).


init 0
Desliga o sistema (2).


telinit 0
Desliga o sistema (3).


halt
Desliga o sistema (4).


shutdown -r mensagem:
Para enviar uma mensagem aos usuários afetados pelo desligamento, use o comando desta forma: sudo shutdown -r 30 "O sistema será reiniciado em 30 minutos”

shutdown -c
Cancela um desligamento do sistema planejado.


shutdown -r now
Reinicia (1).


reboot
Reinicia (2).


logout
Fecha a sessão.


4.3. Arquivos e diretórios

cd /home
Digite o diretório “em casa”.


cd ..

Volta um nível.


cd ../..

Volta 2 níveis.


cd
Vai para o diretório de raiz.

12

cd ~user1
Vai para o diretório de user1.


cd –
Volta () para o diretório anterior.


pwd
Exibe o caminho do diretório de trabalho.


ls
Consulta os arquivos em um diretório.


ls -F
Consulta os arquivos em um diretório.


ls -l
Exibe detalhes de arquivos e pastas em um diretório.


ls -a
Exibe arquivos ocultos.


ls *[0-9]*
Exibe arquivos e pastas que contêm números.


tree
Exibe arquivos e pastas em uma árvore a partir da raiz. (1)

lstree
Exibe arquivos e pastas em uma árvore a partir da raiz. (2)

mkdir dir1
Cria uma pasta ou diretório com nome ‘dir1’.


mkdir dir1 dir2
Cria duas pastas ou diretórios simultaneamente (criando dois diretórios ao mesmo tempo).


mkdir -p /tmp/dir1/dir2
Cria uma árvore de diretório.


rm -f file1
Exclui o arquivo chamado ‘file1’.


rmdir dir1
Exclui a pasta chamada ‘dir1’.


rm -rf dir1
Exclui uma pasta chamada ‘dir1’ com seu conteúdo forçadamente. (Se excluí todo o seu conteúdo).


rm -rf dir1 dir2
Exclui duas pastas (diretórios) com seu conteúdo forçadamente.


13


mv dir1 new_dir
Renomeia ou move um arquivo ou pasta (diretório).


cp file1
Copia um arquivo.


cp file1 file2
Copia os dois arquivos ao mesmo tempo.


cp dir /*.

Copia todos os arquivos de um diretório dentro do diretório de trabalho atual.


cp -a /tmp/dir1.

Copia um diretório dentro do diretório de trabalho atual.


cp -a dir1
Copia um diretório.


cp -a dir1 dir2
Diretório de cópia dois em uníssono.


ln -s file1 lnk1
Cria um link simbólico para o arquivo ou diretório.


ln file1 lnk1
Cria um vínculo físico para o arquivo ou diretório.


touch -t 0712250000 file1
Modifica o tempo real (tempo de criação) de um arquivo ou diretório.


file file1
Saída (despejo na tela) do tipo mime de um arquivo de texto.


iconv -l
Listas de cifras conhecidas.


iconv -f fromEncoding -t toEncoding inputFile > outputFile
Cria uma nova forma de arquivo de entrada assumindo que está codificado em fromEncoding e converte para ToEncoding.


find . -maxdepth 1 -name *.jpg -print -exec convert ”{}” -resize 80×60 “thumbs/{}” \;
Agrupa arquivos dimensionados no diretório atual e os envia aos diretórios de visualização em miniaturas (requer o conversor do ImagemagicK).


4.4. Encontrar arquivos

find / -name file1
Busca de um arquivo ou diretório da raiz do sistema.



14


find / -user user1
Encontra arquivos e diretórios pertencentes ao usuário ‘user1’.


find /home/user1 -name \*.bin
Procura arquivos com extensão ‘. bin’ no diretório ‘/ home/user1’.


find /usr/bin -type f -atime +100
Pesquisa arquivos binários não utilizados nos últimos 100 dias.


find /usr/bin -type f -mtime -10
Pesquisa arquivos criados ou alterados nos últimos 10 dias.


find / -name \*.rpm -exec chmod 755 ‘{}’ \;
Procura arquivos com extensão ‘. rpm’ e modifica permissões.


find / -xdev -name \*.rpm
Procura arquivos com extensão ‘. rpm’ ignorando a mídia removível, como CD-ROM, pen-drive, etc…

locate \*.ps
Encontra arquivos com a extensão ‘. ps primeiramente executado com o comando “updatedb’.


whereis halt
Exibe a localização de um arquivo binário, a ajuda ou a fonte. Neste caso ele pergunta onde está o comando ‘parada’.


which halt
Exibe o caminho completo (o caminho completo) para um binário / executável.


4.5. Trabalhando com sistema de arquivos

mount /dev/hda2 /mnt/hda2
Monta um disco chamado hda2. Primeiro, verifique a existência do diretório ‘/ mnt/hda2’; Se você não possuir, você deve criá-lo.


umount /dev/hda2
Remove um disco chamado hda2. Em primeiro lugar, do ponto de ‘ / mnt/hda2.


fuser -km /mnt/hda2
Força a remoção quando o dispositivo está ocupado.


umount -n /mnt/hda2
Executa a remoção sem ler o arquivo/etc/MTAB. Útil quando o arquivo é somente leitura ou o disco rígido está cheio.


mount /dev/fd0 /mnt/floppy
Monta um disco flexível (disquete).


mount /dev/cdrom /mnt/cdrom
Monta um cdrom / dvdrom.


15


mount /dev/hdc /mnt/cdrecorder
Monta um cd gravável ou um dvdrom.


mount /dev/hdb /mnt/cdrecorder
Monta um cd gravável / dvdrom (um dvd).


mount -o loop file.iso /mnt/cdrom
Monta um arquivo ou uma imagem iso.


mount -t vfat /dev/hda5 /mnt/hda5
Monta um sistema de comandos em arquivos FAT32.


mount /dev/sda1 /mnt/usbdisk
Monta uma memória ou um pen-drive USB (sem especificar o tipo de sistema de arquivos).


4.6. Espaço em disco

df -h
Exibe o tamanho dos arquivos e diretórios ordenados por tamanho.


ls -lSr |more
Estima o espaço usado pelo diretório ‘dir1’.


du -sh dir1
Exibe o tamanho dos arquivos e diretórios ordenados por tamanho.


du -sk * | sort -rn
Exibe o espaço usado por pacotes .rpm instalados, organizados pelo tamanho (Fedora, Red Hat e outros).


rpm -q -a –qf ‘%10{SIZE}t%{NAME}n’ | sort -k1,1n
Exibe o espaço usado por pacotes instalados e organizados pelo tamanho (Debian, Ubuntu e outros).


dpkg-query -W -f=’${Installed-Size;10}t${Package}n’ | sort -k1,1n > g
Exibe (no Debian ou derivados) uma lista com 25 pacotes instalados que consomem mais espaço (em ordem decrescente)

4.7. Usuários e grupos

groupadd nome_do_grupo
Cria um novo grupo.


groupdel nome_do_grupo
Exclui um grupo.


groupmod -n novo_ nome_do_grupo viejo_ nome_do_novo_grupo
Renomeia um grupo.


useradd -c “Name Surname ” -g admin -d /home/user1 -s /bin/bash user1
Cria um novo usuário “admin” do grupo.

16


useradd user1
Cria um novo usuário.


userdel -r user1
Exclui um usuário (‘-r’ elimina o diretório Home).


usermod -c “User FTP” -g system -d /ftp/user1 -s /bin/nologin user1
Altera os atributos do usuário.


passwd
Altera a senha.


passwd user1
Altera a senha do usuário (apenas pelo root).


chage -E 2016-06-22 user1
Define um limite de tempo para a senha do usuário. Neste caso, ele diz que a chave expira a 22 de junho de 2016.


Informações do sistema Linux
• pwck
o Verifica a sintaxe correta ‘/ etc/passwd’ arquivo formato e a existência de usuários.

• grpck
o Verifica a sintaxe correta e formato do arquivo ‘/ etc/grupo’ e a existência de grupos.

• newgrp group_name:
o Registra um novo grupo para alterar o grupo padrão dos arquivos recém-criados.


4.8. Permissões de arquivos (+ = Adiciona e - = Remove permissões)

ls -lh
Exibe permissões.


ls /tmp | pr -T5 -W$COLUMNS
Divide o terminal em 5 colunas.


chmod ugo+rwx directory1
Define permissões de leitura®, gravar (w) e executar (x) para o dono (u), grupo (g) e outros (ou) no diretório ‘arquivo1’.


chmod go-rwx directory1
Remove a permissão de leitura, gravação (w) e grupo de implementação (x) (g) e outros (ou) no diretório
‘arquivo1’.


chown user1 file1
Altera o proprietário de um arquivo.


chown -R user1 directory1
Altera o proprietário de um diretório e todos os arquivos e diretórios contidos dentro.



17


chgrp group1 file1
Altera o grupo de arquivos.


chown user1
Grupo1 arquivo1

find / -perm -u+s
Ver todos os arquivos com sistema SUID configurado.


chmod u+s /bin/file1
Define o bit SUID em um arquivo binário. O usuário que está executando esse arquivo adquire os mesmos privilégios como proprietário.


chmod u-s /bin/file1
Desabilita o bit SUID em um arquivo binário.


chmod g+s /home/public
Define o SGID bit em um diretório – semelhante ao SUID, mas para o diretório.


chmod g-s /home/public
Desativa o bit SGID em um diretório.


chmod o+t /home/public
Conjunto STIKY bit em um diretório. Permite a exclusão de arquivos somente para os legítimos proprietários.


chmod o-t /home/public
Desativa STIKY bit em um diretório.


4.9. Atributos especiais de arquivo: (+ = Adiciona e - = Remove permissões)

chattr +a file1
Permite gravar apenas abrindo um arquivo acrescentar modo.


chattr +c file1
Permite que um arquivo a ser compactado / descompactado automaticamente.


chattr +d file1
Ele garante que o programa ignore excluir os arquivos durante o backup.


chattr +i file1
Torna o arquivo inalterado, portanto não pode ser excluído, alterado, renomeado ou vinculado.


chattr +s file1
Permite que um arquivo possa ser excluído com segurança.


chattr +S file1
Ele garante que um arquivo é modificado, as alterações são gravadas no modo síncrono, como com a sincronia.


18


chattr +u file1
Ele permite que você recuperar o conteúdo de um arquivo, mesmo se está cancelado.


lsattr
Exibe atributos especiais.


4.10. Arquivos e arquivos compactados

bunzip2 file1.bz2
Descompacta um arquivo chamado ‘file1.bz2’.


bzip2 file1
Comprime um arquivo chamado ‘file1’.


gunzip file1.gz
Descompacta um arquivo chamado ‘file1.gz’.


gzip file1
Comprime um arquivo chamado ‘file1’.


gzip -9 file1
Comprime com compressão máxima.


rar a file1.rar test_file
Cria um arquivo com o rar chamado ‘file1.rar’.


rar a file1.rar file1 file2 dir1
Comprime ‘arquivo1’, ‘arquivo2’ e ‘dir1’ simultaneamente.


rar x file1.rar
Descompacta o arquivo rar.


unrar x file1.rar
Descompacta o arquivo rar.


tar -cvf archive.tar file1
Cria um tarball descompactado.


tar -cvf archive.tar file1 file2 dir1
Cria um arquivo contendo ‘arquivo1’, ‘ file2′ e ‘dir1’.


tar -tf archive.tar
Exibi o conteúdo de um arquivo.


tar -xvf archive.tar
Extrai um arquivo tar.


tar -xvf archive.tar -C /tmp
Extrai um tarball em / tmp.


19


tar -cvfj archive.tar.bz2 dir1
Cria um arquivo tar compactado no bzip2.


tar -xvfj archive.tar.bz2
Descompacta um arquivo compactado do bzip2 tar

tar -cvfz archive.tar.gz dir1
Cria um arquivo tar compactado em gzip.


tar -xvfz archive.tar.gz
Descompacta um arquivo tar do gzip compactado.


zip file1.zip file1
Cria um arquivo compactado zip.


zip -r file1.zip file1 file2 dir1
Compressão .zip de vários arquivos e diretórios simultaneamente.


unzip file1.zip
Descompacta um arquivo zip.


4.11. Pacotes RPM (Red Hat, Fedora e derivados)

rpm -ivh package.rpm
Instala um pacote rpm.


rpm -ivh –nodeeps package.rpm
Instala um pacote rpm e ignora solicitações de dependências.


rpm -U package.rpm
Atualiza um pacote rpm sem alterar a configuração dos arquivos.


rpm -F package.rpm
Atualiza um pacote rpm somente se ele “Comandos” estiver instalado.


rpm -e package_name.rpm
Remove um pacote rpm.


rpm -qa
Exibe todos os pacotes rpm instalados no sistema.


rpm -qa | grep httpd
Exibe todos os rpm de pacotes com o nome “httpd”.


rpm -qi package_name
Informações sobre um pacote específico instalado.


rpm -qg “System Environment/Daemons”
Exibe um grupo software pacotes rpm.


20

rpm -ql package_name
Exibe lista de arquivos fornecidos por um pacote rpm instalado.


rpm -qc package_name
Exibe a lista de arquivos, dada por uma configuração de pacote rpm instalado.


rpm -q package_name –whatrequires
Exibe lista de dependências que são solicitados para um pacote rpm.


rpm -q package_name –whatprovides
Exibe a capacidade fornecida por um pacote rpm.


rpm -q package_name –scripts
Exibe scripts começados durante a remoção da instalação.


rpm -q package_name –changelog
Exibe o histórico das revisões de um pacote rpm.


rpm -qf /etc/httpd/conf/httpd.conf
Verifica qual pacote rpm pertence a um determinado arquivo.


rpm -qp package.rpm -l
Exibe a lista de arquivos fornecidos por um rpm do pacote que ainda não foi instalado.


rpm –import /media/cdrom/RPM-GPG-KEY
Importa a assinatura digital chave pública.


rpm –checksig package.rpm
Verifica a integridade de um pacote rpm.


rpm -qa gpg-pubkey
Verifica a integridade de todos os pacotes rpm instalados.


rpm -V package_name
Verifica o tamanho do arquivo, licenças, tipos, proprietário, grupo, exame de integridade, resumo de MD5 e última modificação.


rpm -Va
Verifica todos os pacotes rpm instalados no sistema. Use com cuidado.


rpm -Vp package.rpm
Verifica se um pacote instalado ainda não é rpm.


rpm2cpio package.rpm | cpio –extract –make-directories *bin*
Extrai o arquivo executável de um pacote rpm.


rpm -ivh /usr/src/redhat/RPMS/àrch`/package.rpm
Instala um pacote construído a partir de um rpm fonte.


rpmbuild –rebuild package_name.src.rpm
Constrói um pacote rpm a partir de um rpm fonte.

21


4.12. Pacotes YUM Updater (Red Hat, Fedora e derivados)

yum install package_name
Baixa e instala um pacote rpm.


yum localinstall package_name.rpm
Irá instalar um RPM e vai tentar resolver todas as dependências para você, usando seus repositórios.


yum update package_name.rpm
Atualiza todos os pacotes rpm instalados no sistema.


yum update package_name
Upgrade / atualiza um pacote rpm.


yum remove package_name
Remove um pacote rpm.


yum list
Lista todos os pacotes instalados no sistema.


yum search package_name
Encontra um pacote no repositório rpm.


yum clean packages
Limpa um cache de rpm, apagando os pacotes baixados.


yum clean headers
Exclui todo o cabeçalho de arquivos que o sistema usa para resolver a dependência.


yum clean all
Remove os arquivos de cache e o cabeçalho do pacote.


4.13. Pacotes DEB (Debian, Ubuntu e derivados)

dpkg -i package.deb’
Instala / atualiza um pacote deb.


dpkg -r package_name
Remove um deb para o pacote do sistema.


dpkg -l
Exibe todos os pacotes deb instalados no sistema.


dpkg -l | grep httpd
Exibe todos os pacotes deb com o nome “httpd”

dpkg -s package_name
Informações sobre um pacote específico instalado no seu sistema.


22


dpkg -L package_name
Exibe lista de arquivos fornecidos por um pacote instalado no sistema.


dpkg –contents package.deb
Exibe uma lista de arquivos fornecidos por um pacote não instalado ainda.


dpkg -S /bin/ping
Verifica qual pacote pertence um determinado arquivo.


4.14. Atualizador de pacotes APT (Debian, Ubuntu e derivados)

apt-get install package_name
Instala / atualiza um pacote deb.


apt-cdrom install package_name
Instala / atualiza um pacote deb do cdrom.


apt-get update
Atualiza a lista de pacotes.


apt-get upgrade
Atualiza todos os pacotes instalados.


apt-get remove package_name
Remove a instalação de um pacote deb do sistema.


apt-get purge program_name
Remove a instalação de um programa do sistema.


apt-get check
Verifica se as resoluções das dependências estão corretas.


apt-get clean
Limpa o cache de pacotes baixados.


apt-cache search searched-package
Retorna a lista de pacotes que corresponde à série ‘pacotes’.


4.15. Exibir o conteúdo de um arquivo

cat file1
Exibe o conteúdo de um arquivo a partir da primeira linha.


tac file1
Exibe o conteúdo de um arquivo a partir da última linha.


more file1
Exibe o conteúdo ao longo de um arquivo.


23


less file1
Semelhante o comando ‘more’ mas permite que você salve o arquivo, bem como o movimento para trás.


head -2 file1
Exibe as duas primeiras linhas de um arquivo.


tail -2 file1
Exibe as duas últimas linhas de um arquivo.


tail -f /var/log/messages
Exibe em tempo real o que foi adicionado ao arquivo.


4.16. Manipulação de texto

cat file1 file2 .. | command <> file1_in.txt_or_file1_out.txt
Sintaxe geral para a manipulação de texto usando o tubo, STDIN e STDOUT.


cat file1 | command( sed, grep, awk, grep, etc…) > result.txt
Sintaxe geral para manipular um texto de um arquivo e escrever os resultados para um novo arquivo.


cat file1 | command( sed, grep, awk, grep, etc…) » result.txt
Sintaxe geral para manipular um texto de um arquivo e adicionar o resultado em um arquivo existente.


grep Nov /var/log/messages
Procura as palavras “Nov” no arquivo ‘/ var/log/messages’.


grep ^Nov /var/log/messages
Procura palavras que começam com “Novembro” no arquivo ‘/ var/log/messages’

grep [0-9] /var/log/messages
Seleciona todas as linhas no arquivo ‘/ var/log/messages’ que contêm números.


grep Nov -R /var/log/*
Encontra a sequência de caracteres “Nov” no diretório ‘ / var/log ‘ e abaixo.


sed ‘s/stringa1/stringa2/g’ example.txt
Realoca “string1” com “string2” em Example.txt

sed ‘/^$/d’ example.txt
Remove todas as linhas em branco do example.txt

sed ‘/ *#/d; /^$/d’ example.txt
Exclui comentários e linhas em branco de Example.txt

sed -e ‘1d’ result.txt
Elimina a primeira linha do arquivo result.txt

sed -n ‘/string1/p’
Exibi somente as linhas que contêm a palavra “string1”.

24


4.17. Estabelecer o formato de conversão de arquivos

dos2unix filedos.txt fileunix.txt
Converte um formato de arquivo de texto do MSDOS para UNIX.


unix2dos fileunix.txt filedos.txt
Converte um formato de arquivo de texto do UNIX para MSDOS.


recode ..HTML < page.txt > page.html
Converte um arquivo de texto para html.


recode -l | more
Exibe todas as conversões de formato disponíveis.


4.18. Análise de sistemas de arquivos

badblocks -v /dev/hda1
Verifica os blocos defeituosos no disco hda1.


fsck /dev/hda1
Repara / verificar a integridade do arquivo do sistema Linux no disco hda1.


fsck.ext2 /dev/hda1
Repara / verifica a integridade do sistema de arquivo ext2 no disco hda1.


e2fsck /dev/hda1
Repara / verifica a integridade do sistema de arquivo ext2 no disco hda1.


e2fsck -j /dev/hda1
Repara / verifica a integridade do sistema de arquivo ext3 no disco hda1.


fsck.ext3 /dev/hda1
Repara / verifica a integridade do sistema de arquivo ext3 no disco hda1.


fsck.vfat /dev/hda1
Repara / verifica integridade do arquivo sistema disco fat hda1.


fsck.msdos /dev/hda1
Repara / verifica a integridade de um arquivo a partir do dos no sistema de disco hda1.


dosfsck /dev/hda1
Repara / verifica a integridade de um arquivo a partir do dos no sistema de disco hda1.


4.19. Formatar sistemas de arquivos

mkfs /dev/hda1
Verifica os blocos defeituosos no disco hda1.


25


mke2fs /dev/hda1
Repara / verifica a integridade do arquivo do sistema Linux no disco hda1.


mke2fs -j /dev/hda1
Repara / verifica a integridade do sistema de arquivo ext2 no disco hda1.


mkfs -t vfat 32 -F /dev/hda1
Repara / verifica a integridade do sistema de arquivo ext2 no disco hda1.


fdformat -n /dev/fd0
Repara / verifica a integridade do sistema de arquivo ext3 no disco hda1.


mkswap /dev/hda3
Repara / verifica a integridade do sistema de arquivo ext3 no disco hda1.


4.20. Backups

dump -0aj -f /tmp/home0.bak /home
Faz um backup completo e salva do diretório ‘/Home’.


dump -1aj -f /tmp/home0.bak /home
Faz um Backup incremental do diretório ‘ /home’.


restore -if /tmp/home0.bak
Restaura um save interativamente.


rsync -rogpav –delete /home /tmp
Sincronização entre diretórios.


rsync -rogpav -e ssh –delete /home ip_address
Rsync através do túnel SSH.


rsync -az -e ssh –delete ip_addr
Sincroniza um diretório local com um diretório remoto via ssh e compressão.


rsync -az -e ssh –delete /home/local ip_addr
Sincroniza um diretório remoto em um diretório local através de ssh e compressão.


dd bs=1M if=/dev/hda | gzip | ssh user@ip_addr ‘dd of=hda.gz’
Faz um backup em um disco rígido de um host remoto através de ssh.


dd if=/dev/sda of=/tmp/file1
Salva o conteúdo de um disco rígido para um arquivo. (Neste caso o disco rígido é “sda” e o arquivo
“file1”).


tar -Puf backup.tar /home/user
Salva os diretórios/etc e a raiz (excluindo o conteúdo do subdiretório/root/dir1 /) em um arquivo compactado, cujo nome inclui a data e hora atual.



26


( cd /tmp/local/ && tar c . ) | ssh -C user@ip_addr ‘cd /home/share/ && tar x -p’
Copia o conteúdo de um diretório em um diretório remoto através de ssh.


( tar c /home ) | ssh -C user@ip_addr ‘cd /home/backup-home && tar x -p’
Copia um diretório local em um diretório remoto através de ssh.


tar cf – . | (cd /tmp/backup ; tar xf – )
Copia o local preservando as licenças e links de um diretório para outro.


find /home/user1 -name ‘*.txt’ | xargs cp -av –target-directory=/home/backup/ –parents
Encontra e copia todos os arquivos com extensão ‘.txt’ de um diretório para outro

find /var/log -name ‘*.log’ | tar cv –files-from=- | bzip2 > log.tar.bz2
Encontra todos os arquivos com extensão ‘. log’ e fazer um arquivo bzip.


dd if=/dev/hda of=/dev/fd0 bs=512 count=1
Faz uma cópia do MRB (Master Boot Record) para um disquete.


dd if=/dev/fd0 of=/dev/hda bs=512 count=1
Restaura a cópia da (MBR Master Boot Record) gravada no disquete.


4.21. CD-ROM

cdrecord -v gracetime=2 dev=/dev/cdrom -eject blank=fast -force
Limpa ou apaga um cd regravável (CD-RW)

mkisofs /dev/cdrom > cd.iso
Cria uma imagem .iso do CD-ROM no disco.


mkisofs /dev/cdrom | gzip > cd_iso.gz
Cria uma imagem iso compactada do CD-ROM no disco.


mkisofs -J -allow-leading-dots -R -V “Label CD” -iso-level 4 -o ./cd.iso data_cd
Cria uma imagem .iso de um diretório.


cdrecord -v dev=/dev/cdrom cd.iso
Grava uma imagem iso.


gzip -dc cd_iso.gz | cdrecord dev=/dev/cdrom –
Grava uma imagem iso comprimida.


mount -o loop cd.iso /mnt/iso
Monta uma imagem iso.


cd-paranoia -B
Tira músicas de um cd para arquivos wav.


cd-paranoia – ”-3”
Pegua as 3 primeiras músicas de um cd para arquivos wav.


27


cdrecord –scanbus
Faz a varredura de buffer para identificar o canal scsi.


dd if=/dev/hdc | md5sum
Executa um md5sum em um dispositivo, como um CD.


4.22. Redes (LAN e Wi-Fi)

ifconfig eth0
Exibe a configuração de uma placa de rede Ethernet.


ifup eth0
Ativa uma interface ‘eth0’.


ifdown eth0
Desabilita uma interface ‘eth0’.


ifconfig eth0 192.168.0.1 netmask 255.255.255.0
Configura um endereço IP.


ifconfig eth0 promisc
Configura ‘eth0’ modo comum para obter pacotes (sniffing).


dhclient eth0
Ativa a interface ‘eth0’ em modo dhcp.


route -n
Exibe tabela de rota.


route add -net 0/0 gw IP_Gateway
Configura a entrada padrão.


route add -net 192.168.0.0 netmask 255.255.0.0 gw 192.168.1.1
Configura uma rota estática para encontrar a rede, ‘192.168.0.0/16’.


route del 0/0 gw IP_gateway
Remove a rota estática.


echo “1” > /proc/sys/net/ipv4/ip_forward
Ativa o IP de rota.


hostname
Exibe o nome do host do sistema.


host www.example.com
Encontra o nome do host para resolver o nome de um IP (1).


nslookup www.example.com
Encontra o nome do host para resolver o nome de um IP e vice-versa (2).


28


ip link show
Exibe o status de todas as interfaces.


mii-tool eth0
Exibe o status de ‘eth0’ link.


ethtool eth0
Exibe estatísticas da placa de rede ‘eth0’.


netstat -tup
Exibe todas as conexões de rede ativa e seu PID.


netstat -tupl
Exibe todos os ouvintes de rede de serviços sobre o sistema e seu PID.


tcpdump tcp port 80
Exibe todo o tráfego HTTP.


iwlist scan
Exibe as redes sem fio.


iwconfig eth1
Exibe a configuração de uma placa de rede sem fio.


whois www.example.com
Pesquisa Base de dados Whois.


4.23. Redes Microsoft Windows (SAMBA)

nbtscan ip_addr
Resolução de nome de rede da BIOS.


nmblookup -A ip_addr
Resolução de nome de rede da BIOS.


smbclient -L ip_addr/hostname
Visualiza compartilhamentos remotos de um host windows.


4.24. Firewall (iptables)

iptables -t filter -L
Exibe todas as correntes na tabela de filtro.


iptables -t nat -L
Exibe todas as correntes da tabela nat.


iptables -t filter -F
Limpa todas as regras da tabela de filtro.


29


iptables -t nat -F
Limpa todas as regras da tabela nat.


iptables -t filter -X
Exclui qualquer cadeia criados pelo usuário.


iptables -t filter -A INPUT -p tcp –dport telnet -j ACCEPT
Permite conexões telnet de entrar.


iptables -t filter -A OUTPUT -p tcp –dport http -j DROP
Bloqueia conexões HTTP de saída.


iptables -t filter -A FORWARD -p tcp –dport pop3 -j ACCEPT
Permite conexões POP para uma cadeia de frente.


iptables -t filter -A INPUT -j LOG –log-prefix “DROP INPUT”
Registra uma sequência de entrada.


iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
Configura uma PAT (conversão de endereços de porta) na eth0, escondendo os pacotes de saída de coação.


4.25. Monitoramento e depuração

top
Exibe as tarefas Linux que mais utilizam a CPU.


ps -eafw
Exibe as tarefas do Linux.


ps -e -o pid,args –forest
Exibe as tarefas do Linux de forma hierárquica.


pstree
Exibe uma árvore de processos do sistema.


kill -9 ID_Processo
Força o encerramento de um processo.


kill -1 ID_Processo
Força um processo para recarregar a configuração.


lsof -p $$
Exibe uma lista de arquivos abertos por processos.


lsof /home/user1
Exibe uma lista de arquivos abertos em um determinado caminho do sistema.


strace -c ls >/dev/null
Exibe o sistema de chamadas feitas e recebidas por um processo.

30


strace -f -e open ls >/dev/null
Visualiza chamadas para a biblioteca.


watch -n1 ‘cat /proc/interrupts’
Exibe interrupções em tempo real.


last reboot
Última reinicialização do sistema.


lsmod
Exibe o kernel carregado.


free -m
Exibe o status da RAM em megabytes.


smartctl -A /dev/hda
Monitora a confiabilidade de um disco rígido através do SMART.


smartctl -i /dev/hda
Verifica se o SMART está habilitado em um disco rígido.


tail /var/log/dmesg
Exibe os eventos inerentes no processo de carregamento do kernel.


tail /var/log/messages
Exibe eventos do sistema.


4.26. Dicas e comandos úteis

apropos …keyword
Exibe uma lista de comandos que pertencem às palavras-chave de um programa; são úteis quando você sabe o que faz o seu programa, mas não conhece o nome do comando.


man ping
Exibe as páginas de manual on-line; por exemplo, um comando ping, use a opção ‘-k’ para encontrar qualquer comando relacionado.


whatis …keyword
Exibe a descrição do que o programa faz.



mkbootdisk –device /dev/fd0 ùname -r`
Cria um disquete bootável.


gpg -c file1
Codifica um arquivo com o guarda de segurança do GNU.


gpg file1.gpg
Decodifica um arquivo com o guarda de segurança do GNU, informações do sistema Linux U.



31


wget -r www.example.com
Baixa um site inteiro.


wget -c www.example.com/file.iso
Baixa um arquivo com a possibilidade de parar o download e retomar mais tarde.


echo ‘wget -c www.example.com/files.iso‘ | at 09
Baixa um arquivo às 09 a.m

ldd /usr/bin/ssh
Exibe bibliotecas compartilhadas que são exigidas pelo programa ssh.


alias hh=’history’
Coloque um alias para um comando – hh = história.


chsh
Muda o Shell de comando.


chsh –list-shells
É um comando adequado para descobrir se você tem controle remoto em outro terminal.


clear
Limpa a tela do terminal.


umcomando > archivodesaida.txt 2>&1
Executa um comando e redireciona a saída para um arquivo, combinando entre ambos STDOUT e STDERR.


umcomando | archivodesaida.txt 2> archivodeerros.txt
Executa um comando, você redirecionar a saída (STDOUT) para um arquivo e os erros (STDERR) para outro.


umcomando | tee arquivodesaida.txt
Executa um comando, exibe a saída na tela e simultaneamente grava em um arquivo.


5. Bibliografia

[1] Canonical Ltda. Ubuntu, 2015
[2] Debian. Debian, 2015.

[3] Fedora. Fedora, 2015.

[4] OpenSuse. OpenSuse, 2015.


6. Redes sociais
Participe de nossas páginas e grupos de debate:


32


