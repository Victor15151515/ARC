# Atividade de Pesquisa Técnica: O Protocolo SNMP

**Disciplina:** Administração de Redes de Computadores (ARC)  
**Semana:** 11  


📒**Pesquisa**

---

## 1. O Papel do SNMP

✏️ O **Simple Network Management Protocol (SNMP)** é um protocolo da camada de aplicação do conjunto TCP/IP, essencial para o gerenciamento de redes. Sua finalidade principal é permitir que administradores monitorem e controlem dispositivos de rede, como roteadores, switches, servidores e impressoras, de forma remota e centralizada.

### A Importância da Interoperabilidade
🔎 Em infraestruturas modernas, é comum a coexistência de equipamentos de múltiplos fabricantes (Cisco, HP, Juniper, Dell, etc.). A utilização de um protocolo padronizado como o SNMP é fundamental por:
* **Neutralidade de Fabricante:** Permite que uma única estação de gerenciamento (NMS) dialogue com qualquer dispositivo compatível, independentemente da marca.
* **Eficiência Operacional:** Reduz a necessidade de ferramentas proprietárias e especializadas para cada tipo de hardware.
* **Escalabilidade:** Facilita a expansão da rede sem a preocupação de incompatibilidade nos sistemas de monitoramento.

---

 ## 2. Evolução e Versões (v1, v2c e v3)

 📈 O protocolo SNMP evoluiu significativamente para lidar com as crescentes exigências de segurança e volume de dados.

| Versão | Segurança | Desempenho | Contexto de Uso |
| :--- | :--- | :--- | :--- |
| **SNMPv1** | Baseada em *Community Strings* (senhas enviadas em texto claro). Sem criptografia. | Operações básicas (Get/Set). Ineficiente para grandes tabelas de dados. | Obsoleto. Usado apenas em dispositivos legados e ambientes isolados. |
| **SNMPv2c** | Mantém o modelo de *Community Strings*. Sem melhorias reais em segurança. | Introdução do **GetBulkRequest**, permitindo a recuperação de grandes volumes de dados de uma só vez. | Amplamente utilizado em redes internas devido à sua performance e simplicidade. |
| **SNMPv3** | **Modelo USM/VACM:** Oferece autenticação forte (MD5/SHA) e criptografia (DES/AES). | Similar ao v2c, mas com um pequeno *overhead* devido aos processos de segurança. | **Padrão Atual Recomendado.** Obrigatório para gerência em redes públicas ou corporativas críticas. |

### Motivos Técnicos para a Escolha do SNMPv3
O SNMPv3 é a versão recomendada para ambientes corporativos modernos pois resolve as vulnerabilidades críticas das versões anteriores, garantindo a **Confidencialidade** (dados não podem ser lidos se interceptados), **Integridade** (dados não podem ser alterados no trânsito) e **Autenticidade** (confirma a identidade da origem).

---

## 3. Arquitetura e Funcionamento

Um sistema de gerência SNMP baseia-se na interação entre quatro componentes fundamentais:

* **Gerente (NMS - Network Management Station):** É a estação central (software) que executa as aplicações de monitoramento. Ela solicita dados aos agentes e processa alertas recebidos.
* **Agente (Agent):** Um software que reside no dispositivo gerenciado (roteador, servidor). Sua função é coletar dados de performance e status do hardware local e reportá-los ao Gerente quando solicitado.
* **MIB (Management Information Base):** É um banco de dados virtual e hierárquico organizado em estrutura de árvore. Ela define quais objetos e variáveis do dispositivo podem ser gerenciados.
* **OID (Object Identifier):** É um endereço numérico único que identifica cada objeto dentro da árvore MIB (ex: `.1.3.6.1.2.1.1.5` refere-se ao nome do sistema).

---

## 4. Ecossistema de Softwares

Para interpretar os dados brutos do SNMP existem tres  softwares profissionais como:

1.  **Zabbix:** Ferramenta *open-source* altamente escalável que oferece monitoramento em tempo real, dashboards personalizados e suporte robusto ao SNMPv3.
2.  **Paessler PRTG:** Conhecido pela facilidade de instalação e sensores pré-configurados, ideal para visualização rápida da saúde da infraestrutura.
3.  **SolarWinds Network Performance Monitor (NPM):** Uma solução corporativa líder de mercado que oferece mapeamento de topologia e diagnósticos avançados baseados em SNMP.

---

**Referencias**
* 🤖 IA Google Gemini.
*  📚 **SUBRAMANIAN, Mani.** *Network Management: Principles and Practice*. 2nd Edition. Pearson, 2012.
* 📚  **STALLINGS, William.** *SNMP, SNMPv2, SNMPv3, and RMON 1 and 2*. 3rd Edition. Addison-Wesley Professional, 1999.
