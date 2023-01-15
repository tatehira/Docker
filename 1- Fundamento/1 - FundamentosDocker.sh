O que é Docker?
	-> Uma técnologia de virtualização
		- Não é um sistema de virtualização tradicional(EX: VirtualBox)
			O que tem um sistema de virtualização tradicional?
				1- Sistema Operacional completo
				2- kernel diferente do host
				3- Não há comunicação direta co o host
	-> Serviço de adm de container
		O que é um container?
			1- Um ambiente com sistema de arquivos isolado da máquina host. 
			2- Voce poderá startar o processo a partir desse ambiente

			O que diferencia o docker de uma VM?
				1- O Docker roda o container compartilhadno kernel da maquina host, diferente das VM que necessitam de memoria, processamento e SO exlusivo.
			
			Docker é mais leve?
				1- Sim! Exemplo, quando uma VM liga, ala necessita de uma quantiade X de memoria, processador etc para funcionar. Imagina se for usar mais de uma VM.

	-> usa os serviços da LXC (Linux Containers)
		1- Voce só consegue startar container baseado em Linux

	-> Docker é OpenSouce
	-> baseado em SO e compartilha o kernel com o host(pc)

Por que não usar uma Máquina Virtual?
	-> Além dos containers ter todas as vantagens(elasticidade, isolamento...) que uma VM tem, os containers tem o principal, que seria voce startar em menos de 1 segundo.
	-> Recursos do containers são absurdamentes menor

O que é um container?
	-> Isolamento de preocessos no mesmo kernel, podendo criar um subprocesso
	-> Sistema de arquivos criados a partir de uma imagem
	-> Ambientes leves e portaveis no qual aplicação sao executadas
	-> Encapsula todos os binarios e bibliotcas necessarios para execução de um app
	-> Algo entre um chroot e uma vm

	recomendado:
		-> criar um container para cada processo ex(banco de dados, servidor apache...)
			1- Não recomendado usar tudo em um containers
			2- Por que?
				- Por que cada container terá a sua uma demanda especifica, ex: o bd usa x recurso e usa x portas

O que é uma Imagem Docker?
	-> Modelo de sistema de arquivos somente leitura usado ára criar containers
	-> Imagem são criadas atraves de um processo chamado biuld
	-> As imagens são compostas por um ou mais camadas
	-> Uma camada representa uma ou mais mudança no sistema de arquivos
	-> Uma camadad tbm é chamada de intermediaria
	-> A junção dessas camadas formam uma imagem
	-> Apenas a ultima camdad pode er altrada quando o container for iniciado
	-> AUFS(Advanced multi-layered unification filesysten) é muito usado
	-> O grande objetivo dessa estrategia de dividir uma imagem em camdas é o reuso
	-> È possível compor imagens a apartir de camadas de outras imagens

Imagem x Container
	-> Exemplo: POO
		- Na POO voce pode criar VARIOS OBJETOS com UMA CLASSE
		Nesse caso, a imagem seria a classe e os objetos os containers

Arquitetura do Docker:
	Dividido em duas partes:
	1- Docker server 
	2- Docker registry

		-> Recebe o comando via CLI ou API
		-> Pega as imagens no docker registry(docker hub, nuvem), já possui diversas imagens ja prontas e trás para maquina local
		-> Monta as imagens na maquina local