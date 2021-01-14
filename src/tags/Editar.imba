import Form from '../util/Form'
import {fb} from '../util/Firebase'

export default tag Editar

	prop campo

	prop fields = {
		tipo_de_cadastro: {type: "radio", name: "Tipo de Cadastro", id: "tipo_de_cadastro", options: ["Candidato", "Empresa"]}
		nome: {type: "text", name: "Nome Completo", id: "nome", config: {mask: /^[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]+$/}}
		email: {type: "email", name: "E-mail", id: "email", config: ''}
		senha: {type: "password", name: "Senha", id: "senha", config: ''}
		cpf: {type: "text", name: "CPF", id: "cpf", config: {mask: '000.000.000-00'}}
		telefone: {type: "text", name: "Telefone", id: "telefone", config: {mask: '(00) 00000-0000'}}
		data_de_nascimento: {type: "text", name: "Data de Nascimento", id: "data_de_nascimento", config: {mask: '00/00/0000'}}
		sexo: {type: "radio", name: "Sexo", id: "sexo", options: ["Masculino", "Feminino"]}
		estado_civil: {type: "select", name: "Estado Civil", id: "estado_civil", options: ["Solteiro", "Casado", "Divorciado", "Viúvo", "Separado"]}
		cep: {type: "text", name: "CEP", id: "cep", config: {mask: '00000-000'}}
		endereco: {type: "text", name: "Endereço", id: "endereco", config: ''}
		bairro: {type: "text", name: "Bairro", id: "bairro", config: ''}
		cidade: {type: "text", name: "Cidade", id: "cidade", config: ''}
		estado: {type: "text", name: "Estado", id: "estado", config: ''}
		cargo_de_interesse: {type: "text", name: "Cargo de Interesse", id: "cargo_de_interesse", config: ''}
		area_de_atuacao: {type: "select", name: "Área de Atuação", id: "area_de_atuacao", options: ["Administração", "Comercial e Vendas", "Comércio Exterior", "Educação", "Financeira", "Hotelaria e Turismo", "Informática", "Saúde", "Suprimentos", "Agricultura, Pecuária e Veterinária", "Artes, Arquitetura e Design", "Comunicação e Marketing", "Engenharia", "Industrial", "Jurídica", "Técnica", "Telemarketing", "Telecomunicações", "Serviços Sociais"]}
		nivel_hierarquico: {type: "select", name: "Nível Hierárquico", id: "nivel_hierarquico", options: ["Diretoria", "Gerência", "Supervisão / Chefia", "Profissional especializado com curso superior", "Profissional com ensino médio/profissionalizante", "Outros"]}
		pretensao_salarial: {type: "select", name: "Pretensão Salarial", id: "pretensao_salarial", options: ["Até R$ 1.000,00", "A partir de R$ 1.000,00", "A partir de R$ 2.000,00", "A partir de R$ 3.000,00", "A partir de R$ 4.000,00", "A partir de R$ 5.000,00", "A partir de R$ 6.000,00", "A partir de R$ 7.000,00", "A partir de R$ 8.000,00", "A partir de R$ 9.000,00", "A partir de R$ 10.000,00", "A partir de R$ 15.000,00", "Acima de R$ 20.000,00"]}
		tipo_de_deficiencia: {type: "select", name: "Tipo de Deficiência", id: "tipo_de_deficiencia", options: ["Física", "Múltipla", "Auditiva", "Visual", "Transtorno do Espectro Autista (TEA)"]}
		cargo: {type: "text", name: "Cargo", id: "cargo", config: ''}
		nome_da_empresa: {type: "text", name: "Nome da Empresa", id: "nome_da_empresa", config: ''}
		data_de_entrada: {type: "text", name: "Data de Entrada", id: "data_de_entrada", config: {mask: '00/0000'}}
		data_de_saida: {type: "text", name: "Data de Saída", id: "data_de_saida", config: {mask: '00/0000'}}
		principais_atividades: {type: "textarea", name: "Principais Atividades", id: "principais_atividades"}
		nivel_de_escolaridade: {type: "select", name: "Nível de Escolaridade", id: "nivel_de_escolaridade", options: ["Sem escolaridade", "Ensino fundamental incompleto", "Ensino fundamental completo", "Ensino médio incompleto", "Ensino médio completo", "Superior incompleto", "Superior completo", "Mestrado ou doutorado"]}
		nome_do_curso: {type: "text", name: "Nome do Curso", id: "nome_do_curso", config: ''}
		nome_da_instituicao: {type: "text", name: "Nome da Instituição", id: "nome_da_instituicao", config: ''}
		data_de_inicio: {type: "text", name: "Data de Início", id: "data_de_inicio", config: {mask: '00/0000'}}
		data_de_conclusao: {type: "text", name: "Data de Conclusão", id: "data_de_conclusao", config: {mask: '00/0000'}}
		cnpj: {type: "text", name: "CNPJ", id: "cnpj", config: {mask: '00.000.000/0000-00'}}
		razao_social: {type: "text", name: "Razão Social", id: "razao_social", config: ''}
		nome_fantasia: {type: "text", name: "Nome Fantasia", id: "nome_fantasia", config: ''}
		ramo: {type: "select", name: "Ramo", id: "ramo", options: ["Academia de Esportes / Artes Marciais", "Açúcar e Álcool", "Administração e Participação", "Agências de Turismo / Viagem", "Agricultura / Pecuária / Silvicultura", "Alimentos", "Arquitetura / Paisagismo / Urbanismo", "Assessoria de Imprensa", "Automação", "Automotivo", "Bancário / Financeiro", "Bebidas", "Bens de Capital", "Bens de Consumo (Outros)", "Borracha", "Café", "Calçados", "Comércio Atacadista", "Comércio Varejista", "Comunicação", "Concessionárias / Auto Peças", "Construção Civil", "Consultoria Geral", "Contabilidade / Auditoria", "Corretagem (Imóveis)", "Corretagem (Seguros)", "Corretagem de Títulos e Valores Imobiliários", "Cosméticos", "Diversão / Entretenimento", "Educação / Idiomas", "Eletrônica / Eletroeletrônica / Eletrodomésticos", "Embalagens", "Energia / Eletricidade", "Engenharia", "Equipamentos Industriais", "Equipamentos Médicos / Precisão", "Estética / Academias", "Eventos", "Farmacêutica / Veterinária", "Financeiras", "Gráfica / Editoras", "Importação / Exportação", "Incorporadora", "Indústrias", "Informática", "Internet / Sites", "Jornais", "Jurídica", "Logística / Armazéns", "Madeiras", "Materiais de Construção", "Material de Escritório", "Mecânica / Manutenção", "Metalúrgica / Siderúrgica", "Mineração", "Móveis e Artefatos de Decoração", "Órgãos Públicos", "Outros", "Papel e Derivados", "Petroquímico / Petróleo", "Plásticos", "Prestadora de Serviços", "Publicidade / Propaganda", "Recursos Humanos", "Relações Públicas", "Representação Comercial", "Restaurante / Industrial / Fast Food", "Saúde", "Segurança Patrimonial", "Seguros / Previdência Privada", "Sindicatos / Associações / ONGs", "Supermercado / Hipermercado", "Telecomunicações", "Telemarketing / Call Center", "Têxtil / Couro", "Transportes", "Turismo / Hotelaria"]}
		numero_de_funcionarios: {type: "text", name: "Número de Funcionários", id: "numero_de_funcionarios", config: ''}
		descricao: {type: "textarea", name: "Descrição da Empresa", id: "descricao"}
	}

	prop usuario

	def goBack
		window.location.assign("/#/perfil")

	prop updating = false

	def update
		updating = true
		await fb.alterar_usuario(usuario)
		window.location.assign("/#/perfil")
		updating = false

	def mount
		fb.auth.onAuthStateChanged(do |_user| 
			if _user
				user = await fb.obter_dados(_user)
				user = user.data()
				usuario = {
					nome: user.nome
					cpf: user.cpf
					telefone: user.telefone
					data_de_nascimento: user.data_de_nascimento
					sexo: user.sexo
					estado_civil: user.estado_civil
					cep: user.cep
					endereco: user.endereco
					bairro: user.bairro
					cidade: user.cidade
					estado: user.estado
					cargo_de_interesse: user.cargo_de_interesse
					area_de_atuacao: user.area_de_atuacao
					nivel_hierarquico: user.nivel_hierarquico
					pretensao_salarial: user.pretensao_salarial
					tipo_de_deficiencia: user.tipo_de_deficiencia
					cargo: user.cargo
					nome_da_empresa: user.nome_da_empresa
					data_de_entrada: user.data_de_entrada
					data_de_saida: user.data_de_saida
					principais_atividades: user.principais_atividades
					nivel_de_escolaridade: user.nivel_de_escolaridade
					nome_do_curso: user.nome_do_curso
					nome_da_instituicao: user.nome_da_instituicao
					data_de_inicio: user.data_de_inicio
					data_de_conclusao: user.data_de_conclusao
					cnpj: user.cnpj
					razao_social: user.razao_social
					nome_fantasia: user.nome_fantasia
					ramo: user.ramo
					numero_de_funcionarios: user.numero_de_funcionarios
					descricao: user.descricao
				}
				render()
			else
				window.location.assign("/#/")
		)

	def render

		campo = window.location.hash.slice(16) 

		loading = true
		loading = false if user and not updating

		<self>
			if loading 
				<div[h:calc(100vh - 1rem - 40px)].flex-column.text-primary.d-flex.justify-content-center.align-items-center>
					<div.spinner-border>
					<span.w-100.text-center.pt-1> "Carregando..."
			else
				
				<h4.offset-sm-3.mb-3.mt-5> "EDITAR PERFIL"
				<div.card.col-sm-6.p-0.offset-sm-3.mb-5>
					if user.tipo_de_cadastro == "Candidato" and campo == "dados_pessoais"
						<div.card-header>
							<h6.m-0> "DADOS PESSOAIS"
						<div.card-body>
							<Form field=fields.nome object=usuario>
							<Form field=fields.cpf object=usuario>
							<Form field=fields.telefone object=usuario>
							<Form field=fields.data_de_nascimento object=usuario>
							<Form field=fields.sexo object=usuario>
							<Form field=fields.estado_civil object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"
					if user.tipo_de_cadastro == "Candidato" and campo == "endereco"
						<div.card-header>
							<h6.m-0> "ENDEREÇO"
						<div.card-body>
							<Form field=fields.cep object=usuario>
							<Form field=fields.endereco object=usuario>
							<Form field=fields.bairro object=usuario>
							<Form field=fields.cidade object=usuario>
							<Form field=fields.estado object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"
					if user.tipo_de_cadastro == "Candidato" and campo == "objetivo_profissional"
						<div.card-header>
							<h6.m-0> "OBJETIVO PROFISSIONAL"
						<div.card-body>
							<Form field=fields.cargo_de_interesse object=usuario>
							<Form field=fields.area_de_atuacao object=usuario>
							<Form field=fields.nivel_hierarquico object=usuario>
							<Form field=fields.pretensao_salarial object=usuario>
							<Form field=fields.tipo_de_deficiencia object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"
					if user.tipo_de_cadastro == "Candidato" and campo == "experiencia_profissional"
						<div.card-header>
							<h6.m-0> "EXPERIÊNCIA PROFISSIONAL"
						<div.card-body>
							<Form field=fields.cargo object=usuario>
							<Form field=fields.nome_da_empresa object=usuario>
							<Form field=fields.data_de_entrada object=usuario>
							<Form field=fields.data_de_saida object=usuario>
							<Form field=fields.principais_atividades object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"	
					if user.tipo_de_cadastro == "Candidato" and campo == "formacao_academica"		
						<div.card-header>
							<h6.m-0> "FORMAÇÃO ACADÊMICA"
						<div.card-body>
							<Form field=fields.nivel_de_escolaridade object=usuario>
							<Form field=fields.nome_do_curso object=usuario>
							<Form field=fields.nome_da_instituicao object=usuario>
							<Form field=fields.data_de_inicio object=usuario>
							<Form field=fields.data_de_conclusao object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"
					if user.tipo_de_cadastro == "Empresa" and campo == "dados_pessoais"	
						<div.card-header>
							<h6.m-0> "DADOS PESSOAIS"
						<div.card-body>
							<Form field=fields.telefone object=usuario>
							<Form field=fields.sexo object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"
					if user.tipo_de_cadastro == "Empresa" and campo == "dados_da_empresa"	
						<div.card-header>
							<h6.m-0> "DADOS DA EMPRESA"
						<div.card-body>
							<Form field=fields.cnpj object=usuario>
							<Form field=fields.ramo object=usuario>
							<Form field=fields.razao_social object=usuario>
							<Form field=fields.nome_fantasia object=usuario>
							<Form field=fields.numero_de_funcionarios object=usuario>
							<Form field=fields.descricao object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"
					if user.tipo_de_cadastro == "Empresa" and campo == "endereco"	
						<div.card-header>
							<h6.m-0> "ENDEREÇO"
						<div.card-body>
							<Form field=fields.cep object=usuario>
							<Form field=fields.endereco object=usuario>
							<Form field=fields.bairro object=usuario>
							<Form field=fields.cidade object=usuario>
							<Form field=fields.estado object=usuario>
						<div.card-footer.d-flex.justify-content-between>
							<button.btn.btn-primary type="button" @click=goBack> "Voltar"
							<button.btn.btn-primary type="button" @click=update> "Alterar"
				