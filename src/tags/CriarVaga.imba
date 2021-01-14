import Form from '../util/Form'
import {fb} from '../util/Firebase'

export default tag CriarVaga

	prop fields = {
		titulo_da_vaga: {type: "text", name: "Título da Vaga", id: "titulo_da_vaga", config: ""}
		salario: {type: "select", name: "Salário", id: "salario", options: ["Até R$ 1.000,00", "A partir de R$ 1.000,00", "A partir de R$ 2.000,00", "A partir de R$ 3.000,00", "A partir de R$ 4.000,00", "A partir de R$ 5.000,00", "A partir de R$ 6.000,00", "A partir de R$ 7.000,00", "A partir de R$ 8.000,00", "A partir de R$ 9.000,00", "A partir de R$ 10.000,00", "A partir de R$ 15.000,00", "Acima de R$ 20.000,00"]}
		numero_de_vagas: {type: "text", name: "Número de Vagas", id: "numero_de_vagas", config: ""}
		cidade: {type: "text", name: "Cidade", id: "cidade", config: ""}
		descricao: {type: "textarea", name: "Descrição da Vaga", id: "descricao"}

		beneficios: {type: "textarea", name: "Benefícios", id: "beneficios"}
		horario_de_trabalho: {type: "textarea", name: "Horário de Trabalho", id: "horario_de_trabalho"}
		informacoes_adicionais: {type: "textarea", name: "Informações Adicionais", id: "informacoes_adicionais"}
		nivel_hierarquico: {type: "select", name: "Nível Hierárquico", id: "nivel_hierarquico", options: ["Diretoria", "Gerência", "Supervisão / Chefia", "Profissional especializado com curso superior", "Profissional com ensino médio/profissionalizante", "Outros"]} 
		regime_de_contratacao: {type: "text", name: "Regime de Contratação", id: "regime_de_contratacao", config: ""}

		tipo_de_deficiencia: {type: "select", name: "Tipo de Deficiência", id: "tipo_de_deficiencia", options: ["Física", "Múltipla", "Auditiva", "Visual", "Transtorno do Espectro Autista (TEA)"]}
		caracteristicas_minimas: {type: "textarea", name: "Características Mínimas", id: "caracteristicas_minimas"}
	}

	prop vaga = {
		titulo_da_vaga: ""
		salario: ""
		numero_de_vagas: ""
		cidade: ""
		descricao: ""
		data_de_anuncio: ""

		beneficios: ""
		horario_de_trabalho: ""
		informacoes_adicionais: ""
		nivel_hierarquico: ""
		regime_de_contratacao: ""

		tipo_de_deficiencia: ""
		caracteristicas_minimas: ""


	}

	
	def mount
		fb.auth.onAuthStateChanged(do |_user| 
			if _user
				user = await fb.obter_dados(_user)
				user = user.data()
				user_id = fb.user.uid
				render()
			else
				window.location.assign("/#/")
		)

	def create
		document.querySelector(".active").classList.remove('show')
		document.querySelector(".active").classList.remove('active')
		document.querySelector("#informacoes_gerais").classList.add('show')
		document.querySelector("#informacoes_gerais").classList.add('active')

		loading = true
		vaga.id_empresa = user_id
		vaga.data_de_anuncio = new Date
		await fb.cadastrar_vaga(vaga)
		window.location.assign('/#/minhasvagas')
		loading = false

	def goBack
		window.location.assign("/#/minhasvagas")

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
				<h4.offset-sm-3.mb-3.mt-5> "CRIAR VAGA"
				<div.card.col-sm-6.p-0.offset-sm-3.mb-5>
					<div.tab-content>
						<div.tab-pane.fade.active.show #informacoes_gerais>
							<div.card-header>
								<h6.m-0> "INFORMAÇÕES GERAIS"
							<div.card-body>
								<Form field=fields.titulo_da_vaga object=vaga>
								<Form field=fields.salario object=vaga>
								<Form field=fields.numero_de_vagas object=vaga>
								<Form field=fields.cidade object=vaga>
								<Form field=fields.descricao object=vaga>
							<div.card-footer.d-flex.justify-content-between>
								<button.btn.btn-primary type="button" @click=goBack> "Voltar"
								<button.btn.btn-primary type="button" name="#dados_adicionais" @click=changeTab> "Prosseguir"
						<div.tab-pane.fade #dados_adicionais>
							<div.card-header>
								<h6.m-0> "DADOS ADICIONAIS"
							<div.card-body>
								<Form field=fields.beneficios object=vaga>
								<Form field=fields.horario_de_trabalho object=vaga>
								<Form field=fields.nivel_hierarquico object=vaga>
								<Form field=fields.regime_de_contratacao object=vaga>
								<Form field=fields.informacoes_adicionais object=vaga>
							<div.card-footer.d-flex.justify-content-between>
								<button.btn.btn-primary type="button" name="#informacoes_gerais" @click=changeTab> "Voltar"
								<button.btn.btn-primary type="button" name="#informacoes_para_pessoas_com_deficiencia" @click=changeTab> "Prosseguir"
						<div.tab-pane.fade #informacoes_para_pessoas_com_deficiencia>
							<div.card-header>
								<h6.m-0> "INFORMAÇÕES PARA PESSOAS COM DEFICIÊNCIA"
							<div.card-body>
								<Form field=fields.tipo_de_deficiencia object=vaga>
								<Form field=fields.caracteristicas_minimas object=vaga>
							<div.card-footer.d-flex.justify-content-between>
								<button.btn.btn-primary type="button" name="#dados_adicionais" @click=changeTab> "Voltar"
								<button.btn.btn-primary type="button" @click=create> "Criar"