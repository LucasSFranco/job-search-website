import {fb} from '../util/Firebase'
import Form from '../util/Form'

export default tag Cadastro

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

	prop user = {
		tipo_de_cadastro: ""
		nome: ""
		email: ""
		senha: ""
		cpf: ""
		telefone: ""
		data_de_nascimento: ""
		sexo: ""
		estado_civil: ""
		cep: ""
		endereco: ""
		bairro: ""
		cidade: ""
		estado: ""
		cargo_de_interesse: ""
		area_de_atuacao: ""
		nivel_hierarquico: ""
		pretensao_salarial: ""
		tipo_de_deficiencia: ""
		cargo: ""
		nome_da_empresa: ""
		data_de_entrada: ""
		data_de_saida: ""
		principais_atividades: ""
		nivel_de_escolaridade: ""
		nome_do_curso: ""
		nome_da_instituicao: ""
		data_de_inicio: ""
		data_de_conclusao: ""
		cnpj: ""
		razao_social: ""
		nome_fantasia: ""
		ramo: ""
		numero_de_funcionarios: ""
		descricao: ""
	}

	prop loading = false

	def signup
		loading = true
		await fb.cadastrar_usuario(user)
		window.location.assign("/#/perfil")
		loading = false

	def changeTab e
		document.querySelector(".active").classList.remove('show')
		document.querySelector(".active").classList.remove('active')
		document.querySelector(e.target.name).classList.add('show')
		document.querySelector(e.target.name).classList.add('active')

		let button-type = e.target.textContent
		
		if button-type == "Prosseguir"
			window.scrollTo(0, 0)
		else 
			window.scrollTo(0, document.body.scrollHeight)

	def render
		<self>
			if loading
				<div[h:calc(100vh - 1rem - 40px)].flex-column.text-primary.d-flex.justify-content-center.align-items-center>
					<div.spinner-border>
					<span.w-100.text-center.pt-1> "Carregando..."
			else
				<h4.offset-sm-3.mb-3.mt-5> "CADASTRO DE USUÁRIO"
				<div.card.col-sm-6.p-0.offset-sm-3.mb-5>
					<div.tab-content>
						<div.tab-pane.fade.active.show #informacoes_gerais>
							<div.card-header>
								<h6.m-0> "INFORMAÇÕES GERAIS"
							<div.card-body>
								<Form field=fields.tipo_de_cadastro object=user>
								<Form field=fields.nome object=user>
								<Form field=fields.email object=user>
								<Form field=fields.senha object=user>
							<div.card-footer.d-flex.justify-content-end>
								<button.btn.btn-primary type="button" name="#dados_pessoais" @click=changeTab> "Prosseguir"
						if user.tipo_de_cadastro == "Candidato"
							<div.tab-pane.fade #dados_pessoais>
								<div.card-header>
									<h6.m-0> "DADOS PESSOAIS"
								<div.card-body>
									<Form field=fields.cpf object=user>
									<Form field=fields.telefone object=user>
									<Form field=fields.data_de_nascimento object=user>
									<Form field=fields.sexo object=user>
									<Form field=fields.estado_civil object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#informacoes_gerais" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" name="#endereco" @click=changeTab> "Prosseguir"
							<div.tab-pane.fade #endereco>
								<div.card-header>
									<h6.m-0> "ENDEREÇO"
								<div.card-body>
									<Form field=fields.cep object=user>
									<Form field=fields.endereco object=user>
									<Form field=fields.bairro object=user>
									<Form field=fields.cidade object=user>
									<Form field=fields.estado object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#dados_pessoais" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" name="#objetivo_profissional" @click=changeTab> "Prosseguir"
							<div.tab-pane.fade #objetivo_profissional>
								<div.card-header>
									<h6.m-0> "OBJETIVO PROFISSIONAL"
								<div.card-body>
									<Form field=fields.cargo_de_interesse object=user>
									<Form field=fields.area_de_atuacao object=user>
									<Form field=fields.nivel_hierarquico object=user>
									<Form field=fields.pretensao_salarial object=user>
									<Form field=fields.tipo_de_deficiencia object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#endereco" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" name="#experiencia_profissional" @click=changeTab> "Prosseguir"
							<div.tab-pane.fade #experiencia_profissional>
								<div.card-header>
									<h6.m-0> "EXPERIÊNCIA PROFISSIONAL"
								<div.card-body>
									<Form field=fields.cargo object=user>
									<Form field=fields.nome_da_empresa object=user>
									<Form field=fields.data_de_entrada object=user>
									<Form field=fields.data_de_saida object=user>
									<Form field=fields.principais_atividades object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#objetivo_profissional" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" name="#formacao_academica" @click=changeTab> "Prosseguir"
							<div.tab-pane.fade #formacao_academica>
								<div.card-header>
									<h6.m-0> "FORMAÇÃO ACADÊMICA"
								<div.card-body>
									<Form field=fields.nivel_de_escolaridade object=user>
									<Form field=fields.nome_do_curso object=user>
									<Form field=fields.nome_da_instituicao object=user>
									<Form field=fields.data_de_inicio object=user>
									<Form field=fields.data_de_conclusao object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#experiencia_profissional" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" @click=signup> "Cadastrar"
						if user.tipo_de_cadastro == "Empresa"
							<div.tab-pane.fade #dados_pessoais>
								<div.card-header>
									<h6.m-0> "DADOS PESSOAIS"
								<div.card-body>
									<Form field=fields.telefone object=user>
									<Form field=fields.sexo object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#informacoes_gerais" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" name="#dados_da_empresa" @click=changeTab> "Prosseguir"		
							<div.tab-pane.fade #dados_da_empresa>
								<div.card-header>
									<h6.m-0> "DADOS DA EMPRESA"
								<div.card-body>
									<Form field=fields.cnpj object=user>
									<Form field=fields.ramo object=user>
									<Form field=fields.razao_social object=user>
									<Form field=fields.nome_fantasia object=user>
									<Form field=fields.numero_de_funcionarios object=user>
									<Form field=fields.descricao object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#dados_pessoais" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" name="#endereco" @click=changeTab> "Prosseguir"	
							<div.tab-pane.fade #endereco>
								<div.card-header>
									<h6.m-0> "ENDEREÇO"
								<div.card-body>
									<Form field=fields.cep object=user>
									<Form field=fields.endereco object=user>
									<Form field=fields.bairro object=user>
									<Form field=fields.cidade object=user>
									<Form field=fields.estado object=user>
								<div.card-footer.d-flex.justify-content-between>
									<button.btn.btn-primary type="button" name="#dados_da_empresa" @click=changeTab> "Voltar"
									<button.btn.btn-primary type="button" @click=signup> "Cadastrar"