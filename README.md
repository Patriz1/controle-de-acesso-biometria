# Segundo cérebro: controle de acesso biométrico

Um notebook no **Gemini Notebook** (antigo NotebookLM) que estuda comigo controle de acesso
físico com biometria, respondendo só a partir das fontes que eu selecionei e mostrando de qual
fonte veio cada resposta. Projeto do desafio da DIO "segundo cérebro com IA".

🔗 **Notebook compartilhado:** ⏳ COLAR O LINK AQUI

## Tema e objetivo

Trabalho com sistemas de controle de acesso (terminais faciais, leitores Wiegand, placas de relé
para elevadores) e quis um especialista que organizasse o que eu sei e o que me falta. O objetivo,
na frase que escrevi antes de abrir a ferramenta ([planejamento.md](planejamento.md)):

> Ter um especialista que me explique, a partir de fontes confiáveis, como se monta um sistema de
> controle de acesso (leitor, controladora, fechadura/relé, Wiegand e OSDP), como se mede e se
> protege a biometria facial e por digital contra fraudes, e o que a LGPD exige de quem trata
> esses dados.

## Fontes

Critério de entrada: autor identificável e com autoridade, fonte primária quando possível,
conteúdo técnico e não comercial, atual, sem dados pessoais (detalhes em
[planejamento.md](planejamento.md#critérios-para-uma-fonte-entrar)). Os vídeos foram buscados numa
aba anônima, para o algoritmo não escolher por mim.

Três formatos (texto da web, PDF e vídeo) e duas línguas: as fontes em inglês cobrem o que não
encontrei com a mesma autoridade em português (OSDP, testes do NIST, normas de prova de vida).

| # | Fonte | Autor | Formato | Língua | Tema | Por que confio |
|---|---|---|---|---|---|---|
| 1 | [Lei nº 13.709/2018 (LGPD), texto compilado](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709compilado.htm) | Presidência da República | web | PT | LGPD | Texto oficial e atualizado da lei (art. 5º, II e art. 11) |
| 2 | [Radar Tecnológico nº 2: Biometria e Reconhecimento Facial](https://www.gov.br/anpd/pt-br/centrais-de-conteudo/documentos-tecnicos-orientativos/radar-tecnologico-biometria-anpd.pdf/@@display-file/file) | ANPD, 2024 | PDF | PT | Biometria, LGPD | Estudo técnico da própria autoridade de proteção de dados |
| 3 | [Nota Técnica nº 17/2025: Tomada de Subsídios sobre dados biométricos](https://www.gov.br/anpd/pt-br/acesso-a-informacao/participacao-social/outras-acoes/ts-01-2025-nota-tecnica-17-de-abertura.pdf/@@display-file/file) | ANPD, 2025 | PDF | PT | LGPD | Documento oficial que abre a regulamentação específica de biometria |
| 4 | [Tomada de Subsídios: dados biométricos](https://www.gov.br/participamaisbrasil/ts-dados-biometricos) | ANPD / Participa + Brasil | web | PT | LGPD | Página oficial da consulta, com as perguntas que a ANPD quer responder |
| 5 | [LGPD e o controle de acesso nos condomínios](https://www.youtube.com/watch?v=9Rz8IzqTmJA) | SíndicoNet | vídeo | PT | LGPD na prática | Portal de referência do setor condominial, com especialista convidado |
| 6 | [Reconhecimento Facial, tecnologia em controle de acesso](https://www.youtube.com/watch?v=FD5a7xa8hVo) | Intelbras | vídeo | PT | Arquitetura, facial | Fabricante brasileiro do setor. **É conteúdo comercial**: entrou só pela visão de produto, não como referência técnica |
| 7 | [OSDP v Wiegand](https://www.youtube.com/watch?v=gk-v8OzKAs0) | HID Academy (HID Global) | vídeo | EN | Protocolos | A HID é coautora do OSDP |
| 8 | [Reader Supervision: Wiegand vs. OSDP](https://www.youtube.com/watch?v=-zhJr-YhKsk) | Mercury Security (HID) | vídeo | EN | Protocolos | A Mercury fabrica controladoras e também é coautora do OSDP |
| 9 | [Face Recognition Technology Evaluation (FRTE) 1:1](https://pages.nist.gov/frvt/html/frvt11.html) | NIST | web | EN | Precisão | Benchmark oficial do governo dos EUA, sucessor do FRVT |
| 10 | [NISTIR 8280: FRVT Part 3, Demographic Effects](https://nvlpubs.nist.gov/nistpubs/ir/2019/NIST.IR.8280.pdf) | NIST, 2019 | PDF | EN | Precisão, viés | Relatório de referência mundial sobre erros de reconhecimento e viés demográfico |
| 11 | [ISO PAD and FIDO Comparison](https://ibeta.com/wp-content/uploads/2022/06/iBeta-Biometrics-ISO-PAD-and-FIDO-Comparison.pdf) | iBeta | PDF | EN | Prova de vida | Laboratório acreditado pelo NIST que executa os testes ISO/IEC 30107-3 |
| 12 | [FIDO Biometric Certification FAQ](https://fidoalliance.org/certification-biometric-component-fido-biometric-certification-faq/) | FIDO Alliance | web | EN | FAR/FRR, prova de vida | Consórcio de padrões; define FAR, FRR e IAPAR e cita a ISO 30107 |
| 13 | [TCC: automação para evitar fraudes analógicas, digitais e deepfakes](https://repositorio.ufu.br/bitstreams/319417ef-f22b-46d9-884c-edf01bb2392d/download) | UFU, Eng. Mecatrônica, 2025 | PDF | PT | Prova de vida | Repositório de universidade federal; protótipo de *liveness* com taxas medidas |

### Candidatas que ficaram de fora

- **Página do OSDP na SIA** (securityindustry.org): é a fonte mais autoritativa sobre OSDP, mas
  bloqueia acesso automatizado e não importa no notebook.
- **Norma ISO/IEC 30107 no iso.org**: só a ficha do catálogo; a norma é paga.
- **Blogs de empresas de KYC** (Didit, Shufti Pro): conteúdo comercial escrito para SEO.
- **Vídeo "Wiegand vs OSDP" da Verkada**: era um reupload num canal pessoal, não o oficial.
- **Vídeos genéricos de LGPD em condomínio** (TownSq, Cond TV): não tratam de biometria.

### Fontes que o Deep Research sugeriu e eu não importei

⏳ (uma linha por fonte: qual e por quê)

## Diretriz de comportamento

Configurada em *Configurar conversa* → *Personalizado*:

> Comporte-se como um engenheiro especialista em controle de acesso físico e biometria, com
> experiência em projetos no Brasil. Responda em português, apenas com base nas fontes deste
> notebook, e indique de qual fonte veio cada afirmação. Se as fontes não cobrirem a pergunta,
> diga isso claramente em vez de supor. Explique cada termo técnico (FAR, FRR, Wiegand, OSDP, PAD,
> liveness) na primeira vez que aparecer. Sempre que a resposta envolver dados biométricos de
> pessoas, aponte o que a LGPD exige.

## Perguntas, respostas e fontes

Cada resposta abaixo é um resumo da resposta do notebook. As fontes citadas são as que aparecem
ao clicar nos números de citação, e o print mostra a citação aberta.

### 1. Quais são os componentes de um sistema de controle de acesso e o que cada um faz?

⏳ Resumo da resposta.

**Fontes citadas:** ⏳ · **Print:** [prints/01-componentes.png](prints/01-componentes.png)

### 2. Por que o Wiegand é considerado inseguro, e o que o OSDP resolve?

⏳ Resumo da resposta.

**Fontes citadas:** ⏳ · **Print:** [prints/02-wiegand-osdp.png](prints/02-wiegand-osdp.png)

### 3. O que são FAR e FRR, e como um ajuste de limiar troca uma pela outra?

⏳ Resumo da resposta.

**Fontes citadas:** ⏳ · **Print:** [prints/03-far-frr.png](prints/03-far-frr.png)

### 4. Como o NIST avalia algoritmos de reconhecimento facial, e o que isso diz sobre escolher um terminal?

⏳ Resumo da resposta.

**Fontes citadas:** ⏳ · **Print:** [prints/04-nist.png](prints/04-nist.png)

### 5. O que é um ataque de apresentação e como a prova de vida tenta detectá-lo?

⏳ Resumo da resposta.

**Fontes citadas:** ⏳ · **Print:** [prints/05-liveness.png](prints/05-liveness.png)

### 6. Biometria é dado sensível na LGPD? Qual base legal um condomínio pode usar para cadastrar o rosto dos moradores?

⏳ Resumo da resposta.

**Fontes citadas:** ⏳ · **Print:** [prints/06-lgpd.png](prints/06-lgpd.png)

### 7. Facial ou digital: quando usar cada uma num prédio comercial?

⏳ Resumo da resposta.

**Fontes citadas:** ⏳ · **Print:** [prints/07-facial-vs-digital.png](prints/07-facial-vs-digital.png)

### 8. Pergunta fora das fontes: "Qual o melhor terminal facial do mercado?"

Testa se o notebook se limita às fontes. ⏳ O que ele respondeu.

**Print:** [prints/08-fora-das-fontes.png](prints/08-fora-das-fontes.png)

## Materiais gerados no Estúdio

| Material | Arquivo |
|---|---|
| Mapa mental | ⏳ [materiais/mapa-mental.png](materiais/mapa-mental.png) |
| Slides | ⏳ [materiais/slides.pdf](materiais/slides.pdf) |
| Guia de estudos (quiz e glossário) | ⏳ [materiais/guia-de-estudos.pdf](materiais/guia-de-estudos.pdf) |
| Resumo em áudio | ⏳ [materiais/resumo-audio.m4a](materiais/resumo-audio.m4a) |

## O que aprendi

⏳ Três ou quatro linhas suas: o que o notebook explicou melhor que você esperava, onde as fontes
não bastaram e qual fonte você acrescentaria.

## Estrutura do repositório

```
README.md          este documento
planejamento.md    objetivo, critérios das fontes, diretriz e perguntas (escrito antes do notebook)
materiais/         o que foi baixado do Estúdio
prints/            capturas do chat com as citações abertas
```
