import {fb} from '../util/Firebase'

export default tag Curriculos

	css &
		.icon
			font-size: 1rem
			cursor@hover:pointer
			transition: .15s ease-in-out
			border-radius:50%
			bg@hover:#d8d8d8
			p:7px
		.text-title
			fw:600
			fs:.9rem

	def mount 
		loading = true
		render()
		fb.auth.onAuthStateChanged(do |_user| 
			if _user
				user = await fb.obter_dados(_user)
			else
				window.location.assign("/#/")
		)
		curriculos = await fb.firestore.collection('usuarios').get()
		curriculos = curriculos.docs.map do |doc|
			rec = {}
			for own k, v of doc.data()
				rec[k] = v
			rec.id = doc.id
			rec
		loading = false
		render()
	
	def render
		<self>
			if loading
				<div[h:calc(100vh - 1rem - 40px)].flex-column.text-primary.d-flex.justify-content-center.align-items-center>
					<div.spinner-border>
					<span.w-100.text-center.pt-1> "Carregando..."
			else if curriculos
				<h4.offset-sm-2.mb-3.mt-5> "VAGAS"
				<div.card.col-sm-8.offset-sm-2.mb-5.p-0>
					for curriculo in curriculos
						if curriculo.tipo_de_cadastro == "Candidato"
							<div.card.m-3>
								<div.card-header>
									<h6.m-0.d-flex.align-items-center.justify-content-between> "{curriculo.nome.toUpperCase()}"
								<div.card-body.pb-0>
									<p> "Pretende ser {curriculo.cargo_de_interesse}, no nível de {curriculo.nivel_hierarquico}, dentro da área de {curriculo.area_de_atuacao}, ganhando salário {curriculo.pretensao_salarial}. Tem deficiência {curriculo.tipo_de_deficiencia}."
									<button.mb-3.btn.btn-outline-primary type="button"> "Convidar para entrevista"
									<div.collapse#collapse-{curriculo.id}>
										<hr.mt-0>
										<h6> "DADOS PESSOAIS"
										<div.row.d-flex.align-items-center>
											<div.col-3>
												<p.text-title> "CPF"
											<div.col-9>
												<p> curriculo.cpf
											<div.col-3>
												<p.text-title> "TELEFONE"
											<div.col-9>
												<p> curriculo.telefone
											<div.col-3>
												<p.text-title> "DATA DE NASCIMENTO"
											<div.col-9>
												<p> curriculo.data_de_nascimento
											<div.col-3>
												<p.text-title> "SEXO"
											<div.col-9>
												<p> curriculo.sexo
											<div.col-3>
												<p.text-title> "ESTADO CIVIL"
											<div.col-9>
												<p> curriculo.estado_civil
										<hr.mt-0>
										<h6> "EXPERIÊNCIA PROFISSIONAL"
										<div.row.d-flex.align-items-center>
											<div.col-3>
												<p.text-title> "CARGO"
											<div.col-9>
												<p> curriculo.cargo
											<div.col-3>
												<p.text-title> "NOME DA EMPRESA"
											<div.col-9>
												<p> curriculo.nome_da_empresa
											<div.col-3>
												<p.text-title> "DATA DE ENTRADA"
											<div.col-9>
												<p> curriculo.data_de_entrada
											<div.col-3>
												<p.text-title> "DATA DE SAÍDA"
											<div.col-9>
												<p> curriculo.data_de_saida
											<div.col-3>
												<p.text-title> "PRINCIPAIS ATIVIDADES"
											<div.col-9>
												<p> curriculo.principais_atividades
										<hr.mt-0>
										<h6> "FORMAÇÃO ACADÊMICA"
										<div.row.d-flex.align-items-center>
											<div.col-3>
												<p.text-title> "NÍVEL DE ESCOLARIDADE"
											<div.col-9>
												<p> curriculo.nivel_de_escolaridade
											<div.col-3>
												<p.text-title> "NOME DO CURSO"
											<div.col-9>
												<p> curriculo.nome_do_curso
											<div.col-3>
												<p.text-title> "NOME DA INSTITUIÇÃO"
											<div.col-9>
												<p> curriculo.nome_da_instituicao
											<div.col-3>
												<p.text-title> "DATA DE INÍCIO"
											<div.col-9>
												<p> curriculo.data_de_inicio
											<div.col-3>
												<p.text-title> "DATA DE CONCLUSÃO"
											<div.col-9>
												<p> curriculo.data_de_conclusao
								if !expanded
									<button[lh:.9rem fs:.9rem border-top-right-radius:0 border-top-left-radius:0].btn.btn-primary.btn-block.p-1.d-flex.align-items-center.justify-content-center data-toggle="collapse" data-target="#collapse-{curriculo.id}" @click=(do expanded=true)>
										<p.m-0> "abrir currículo"
										<span[fs:1.2rem lh:.9rem].material-icons> "expand_more"
								else
									<button[lh:.9rem fs:.9rem border-top-right-radius:0 border-top-left-radius:0].btn.btn-primary.btn-block.p-1.d-flex.align-items-center.justify-content-center data-toggle="collapse" data-target="#collapse-{curriculo.id}" @click=(do expanded=false)>
										<p.m-0> "fechar currículo"
										<span[fs:1.2rem lh:.9rem].material-icons> "expand_less"