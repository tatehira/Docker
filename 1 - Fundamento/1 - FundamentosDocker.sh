O que é Docker?
	-> Uma técnologia de virtualização
		- Não é um sistema de virtualização tradicional(EX: VirtualBox)
			O que tem um sistema de virtualização tradicional?
				1 - Sistema Operacional completo
				2 - kernel diferente do host
				3 - Não há comunicação direta co o host
	-> Serviço de adm de container
		O que é um container?
			- Um ambiente com sistema de arquivos isolado da máquina host. 
			- Voce poderá startar o processo a partir desse ambiente

			O que diferencia o docker de uma VM?
				- O Docker roda o container compartilhadno kernel da maquina host, diferente das VM que necessitam de memoria, processamento e SO exlusivo.
			
			Docker é mais leve?
				- Sim! Exemplo, quando uma VM liga, ala necessita de uma quantiade X de memoria, processador etc para funcionar. Imagina se for usar mais de uma VM.

	-> usa os serviços da LXC (Linux Containers)
		- Voce só consegue startar container baseado em Linux

	-> Docker é OpenSouce
	-> baseado em SO e compartilha o kernel com o host(pc)

Por que não usar uma Máquina Virtual?
	- Além dos containers ter todas as vantagens(elasticidade, isolamento...) que uma VM tem, os containers tem o principal, que seria voce startar em menos de 1 segundo.
	- Recursos do containers são absurdamentes menor

O que é um container?
	- Isolamento de preocessos no mesmo kernel, podendo criar um subprocesso
	- Sistema de arquivos criados a partir de uma imagem
	- Ambientes leves e portaveis no qual aplicação sao executadas
	- Encapsula todos os binarios e bibliotcas necessarios para execução de um app
	- Algo entre um chroot e uma vm

	recomendado:
		- criar um container para cada processo ex(banco de dados, servidor apache...)
			- Não recomendado usar tudo em um containers
			- Por que?
				- Por que cada container terá a sua uma demanda especifica, ex: o bd usa x recurso e usa x portas

