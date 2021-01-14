import {fb} from '../util/Firebase'

export default tag Perfil

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
			fs:.9rems

	prop loading = false

	def mount
		fb.auth.onAuthStateChanged(do |_user| 
			if _user
				user = await fb.obter_dados(_user)
				user = user.data()
				render()
			else
				window.location.assign("/#/")
		)

	def edit e
		window.location.assign("/#/perfil/editar:{e.target.name}")

	def render

		loading = true
		loading = false if user
		
		<self>
			if loading 
				<div[h:calc(100vh - 1rem - 40px)].flex-column.text-primary.d-flex.justify-content-center.align-items-center>
						<div.spinner-border>
						<span.w-100.text-center.pt-1> "Carregando..."
			else
				<h4.offset-sm-2.mb-3.mt-5> "PERFIL DO USUÁRIO"
				<div.card.col-sm-8.offset-sm-2.mb-5>
					if user.tipo_de_cadastro == "Candidato"
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "DADOS PESSOAIS"
									<i.icon.material-icons title="Editar" name="dados_pessoais" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NOME"
									<div.col-9>
										<p> user.nome
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CPF"
									<div.col-9>
										<p> user.cpf
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "TELEFONE"
									<div.col-9>
										<p> user.telefone
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "SEXO"
									<div.col-9>
										<p> user.sexo
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "DATA DE NASCIMENTO"
									<div.col-9>
										<p> user.data_de_nascimento
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "ESTADO CIVIL"
									<div.col-9>
										<p> user.estado_civil
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "ENDEREÇO"
									<i.icon.material-icons title="Editar" name="endereco" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CEP"
									<div.col-9>
										<p> user.cep
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "ENDEREÇO"
									<div.col-9>
										<p> user.endereco
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "BAIRRO"
									<div.col-9>
										<p> user.bairro
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CIDADE"
									<div.col-9>
										<p> user.cidade
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "ESTADO"
									<div.col-9>
										<p> user.estado
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "OBJETIVO PROFISSIONAL"
									<i.icon.material-icons title="Editar" name="objetivo_profissional" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CARGO DE INTERESSE"
									<div.col-9>
										<p> user.cargo_de_interesse
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "ÁREA DE ATUAÇÃO"
									<div.col-9>
										<p> user.area_de_atuacao
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NÍVEL HIERÁRQUICO"
									<div.col-9>
										<p> user.nivel_hierarquico
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "PRETENSÃO SALARIAL"
									<div.col-9>
										<p> user.pretensao_salarial
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "TIPO DE DEFICIÊNCIA"
									<div.col-9>
										<p> user.tipo_de_deficiencia
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "EXPERIÊNCIA PROFISSIONAL"
									<i.icon.material-icons title="Editar" name="experiencia_profissional" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CARGO"
									<div.col-9>
										<p> user.cargo
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NOME DA EMPRESA"
									<div.col-9>
										<p> user.nome_da_empresa
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "DATA DE ENTRADA"
									<div.col-9>
										<p> user.data_de_entrada
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "DATA DE SAÍDA"
									<div.col-9>
										<p> user.data_de_saida
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "PRINCIPAIS ATIVIDADES"
									<div.col-9>
										<p> user.principais_atividades
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "FORMAÇÃO ACADÊMICA"
									<i.icon.material-icons title="Editar" name="formacao_academica" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NÍVEL DE ESCOLARIDADE"
									<div.col-9>
										<p> user.nivel_de_escolaridade
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NOME DO CURSO"
									<div.col-9>
										<p> user.nome_do_curso
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NOME DA INSTITUIÇÃO"
									<div.col-9>
										<p> user.nome_da_instituicao
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "DATA DE INÍCIO"
									<div.col-9>
										<p> user.data_de_inicio
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "DATA DE CONCLUSÃO"
									<div.col-9>
										<p> user.data_de_conclusao
					if user.tipo_de_cadastro == "Empresa"
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "DADOS PESSOAIS"
									<i.icon.material-icons title="Editar" name="dados_pessoais" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NOME"
									<div.col-9>
										<p> user.nome
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "TELEFONE COMERCIAL"
									<div.col-9>
										<p> user.telefone
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "SEXO"
									<div.col-9>
										<p> user.sexo
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "DADOS DA EMPRESA"
									<i.icon.material-icons title="Editar" name="dados_da_empresa" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CNPJ"
									<div.col-9>
										<p> user.cnpj	
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "RAZÃO SOCIAL"
									<div.col-9>
										<p> user.razao_social
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NOME FANTASIA"
									<div.col-9>
										<p> user.nome_fantasia
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "RAMO"
									<div.col-9>
										<p> user.ramo
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "NÚMERO DE FUNCIONÁRIOS"
									<div.col-9>
										<p> user.numero_de_funcionarios
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "DESCRIÇÃO DA EMPRESA"
									<div.col-9>
										<p> user.descricao											
						<div.card.my-3>
							<div.card-header>
								<h6.m-0.d-flex.align-items-center.justify-content-between> "ENDEREÇO"
									<i.icon.material-icons title="Editar" name="endereco" @click=edit> "edit"
							<div.card-body>
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CEP"
									<div.col-9>
										<p> user.cep
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "ENDEREÇO"
									<div.col-9>
										<p> user.endereco
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "BAIRRO"
									<div.col-9>
										<p> user.bairro
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "CIDADE"
									<div.col-9>
										<p> user.cidade
								<div.row.d-flex.align-items-center>
									<div.col-3>
										<p.text-title> "ESTADO"
									<div.col-9>
										<p> user.estado