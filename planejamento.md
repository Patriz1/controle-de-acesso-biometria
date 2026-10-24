# Bloco de notas — antes de abrir o Gemini Notebook

## Tema

Controle de acesso físico com biometria (facial e digital).

## Objetivo (uma frase)

> Ter um especialista que me explique, a partir de fontes confiáveis, como se monta um sistema de
> controle de acesso (leitor, controladora, fechadura/relé, Wiegand e OSDP), como se mede e se
> protege a biometria facial e por digital contra fraudes, e o que a LGPD exige de quem trata
> esses dados.

## O que o segundo cérebro precisa saber

1. Arquitetura: credencial → leitor → controladora → fechadura/relé → software.
2. Protocolos entre leitor e controladora: Wiegand (e suas limitações de segurança) e OSDP.
3. Biometria: como funcionam o reconhecimento facial e o de digital, e como se mede a precisão
   (FAR, FRR, testes do NIST).
4. Fraude: spoofing, prova de vida (*liveness*) e detecção de ataque de apresentação (ISO/IEC 30107).
5. LGPD: biometria como dado pessoal sensível (art. 5º, II e art. 11), base legal, consentimento,
   uso em condomínios e empresas, orientações da ANPD.

## Critérios para uma fonte entrar

Uma fonte entra só se responder "sim" a pelo menos três destas:

- **Autor identificável e com autoridade**: órgão público (ANPD, Planalto, NIST), entidade de
  normas (SIA, ISO), universidade ou fabricante falando da própria tecnologia.
- **Primária quando possível**: o texto da lei antes do resumo da lei; a especificação antes do
  post sobre ela.
- **Técnica, não comercial**: explica *como funciona*; não é só propaganda de produto.
- **Atual**: biometria e LGPD mudam rápido; evitar material anterior a 2018 salvo norma ou lei.
- **Sem dado pessoal** e com permissão de compartilhar.

O Deep Research sugere; quem decide sou eu. Cada fonte importada por ele passa por estes critérios.

## Diretriz para o notebook

> Comporte-se como um engenheiro especialista em controle de acesso físico e biometria, com
> experiência em projetos no Brasil. Responda em português, apenas com base nas fontes deste
> notebook, e indique de qual fonte veio cada afirmação. Se as fontes não cobrirem a pergunta,
> diga isso claramente em vez de supor. Explique cada termo técnico (FAR, FRR, Wiegand, OSDP, PAD,
> liveness) na primeira vez que aparecer. Sempre que a resposta envolver dados biométricos de
> pessoas, aponte o que a LGPD exige.

## Perguntas para o chat

1. Quais são os componentes de um sistema de controle de acesso e o que cada um faz?
2. Por que o Wiegand é considerado inseguro, e o que o OSDP resolve?
3. O que são FAR e FRR, e como um ajuste de limiar troca uma pela outra?
4. Como o NIST avalia algoritmos de reconhecimento facial, e o que isso diz sobre escolher um
   terminal?
5. O que é um ataque de apresentação e como a prova de vida tenta detectá-lo?
6. Biometria é dado sensível na LGPD? Qual base legal um condomínio pode usar para cadastrar o
   rosto dos moradores?
7. Facial ou digital: quando usar cada uma num prédio comercial? (comparação de duas abordagens)
8. Pergunta-armadilha, fora das fontes: "Qual o melhor terminal facial do mercado?" — o notebook
   deve dizer que as fontes não respondem isso.
