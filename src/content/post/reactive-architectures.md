+++
date = "2017-07-10T22:00:00+02:00"
draft = false
slug = "reactive-architectures"
title = "Notas sobre arquiteturas reativas"
image = "../images/rxarchitecture.jpg"
+++


Na edição desse ano da QCONSP eu tive a oportunidade de pincelar um pouco sobre o que aprendi ao longo do último ano no tocante à exploração de padrões para arquitetura de responsabilidades em apps mobile, empoderados por programação reativa funcional (tipicamente com RxJava no contexto do Android). Adicionalmente, uma extensão dessas idéias agora é tema de alguns próximos encontros, e um compilado das discussões está nos [slides](https://speakerdeck.com/ubiratansoares/evoluindo-arquiteturas-reativas) associados.

Como parte das contribuições que ainda cabem nesse assunto, resolvi construir e publicar um [pequeno sample](https://github.com/ubiratansoares/reactive-architectures-playground) que ilustra alguns conceitos interessantes do modelo de arquitetura que tenho seguido principalmente ao longo do último ano. 

Claro que essa é sem dúvida uma discussão extremamente atual, rica e amplamente aberta, e nem de longe essa demo / postagem tem a pretensão de esgotá-la. O próprio Google sinaliza agora suas opiniões, com o anúncio do pacote [**Android Architecture Components**](https://developer.android.com/topic/libraries/architecture/index.html) que em breve será parte integrante da biblioteca de suporte do Android, e em particular, eu acredito que essa posição na verdade tem vários elementos que são *plug-and-play* com vários modelos já existentes e adotados em projetos de diversos níveis de maturidade do mercado. Esse *sample*, inclusive, ilustra isso.

Se você explorar **Reactive Architectures Playground** você verá na prática

- Como modelar um problema _extremamente comum_ do mundo real em uma arquitetura MVP 100% reativa, ou seja, com dados fluindo do nível mais externo (mundo exterior) ao nível do usuário segundo fluxos observáveis
- Como essa arquitetura utiliza um estilo de API simplificado, minimalista, com o protocolo *View* sendo a união de vários comportamentos segregados
- Como manipular diversos comportamentos segregados pode ser mais fácil através da decomposição de operações funcionais coordenadas no *pipeline de apresentação*
- Como construir 100% dos objetos importantes das camadas com *Dependency Injection*, explorando algumas das novas APIs introduzidas nos últimos dois meses na Dagger2, [específicas para Android](https://github.com/google/dagger/releases/tag/dagger-2.11). Tem exemplo de como desacoplar o uso de **Context** inclusive, para traduzir *ViewsModels* segundo uma lógica específica de formatação
- Como aplicar testes de unidade de forma efetiva de acordo com o propósito de cada classe, no nível de unidade + documentação; unidade + verificação e unidade + integração, usando as APIs de teste próprias do RxJava2, além Mockito2 e Roboletric, que testam desde a integração com rede até o nível da Activity (são quase 60 testes !!)
- Como utilizar **LifecycleOwner** e **LifecyclerObserver** para criar *Presenters* que não precisam mais de APIs ao estilo **_attach()_** e **_detach()_** por motivos de ciclo-de-vida / *memory leaks* em Activities e Fragments 
- Outras surpresas que você pode pode conferir no código-fonte

Não é nada de espetacular, eu sei, mas deve ajudar a sanar a dúvida de muita gente :)

[Sample no Github](https://github.com/ubiratansoares/reactive-architectures-playground)

Enjoy!