# 🚀 ByteHomeLab

> **ByteHomeLab** é o repositório central do meu **homelab/domótica**, onde tudo é versionado em Git: Docker, Home Assistant, Node-RED, ESP32 (ESPHome) e automações.

A ideia é simples: **se está rodando na casa, está no Git**.

---

## 🧠 Visão Geral

O ByteHomeLab organiza e versiona:

* 🐳 Infraestrutura Docker (Home Assistant, MQTT, Node-RED, ESPHome, Portainer)
* 🔁 Fluxos do Node-RED
* 📟 Firmwares e configurações de ESP32 (ESPHome)
* 🏠 Configurações do Home Assistant
* 📊 Diagramas e documentação
* 🔄 Scripts de backup e automação

Esse repositório permite:

* Rastrear mudanças
* Reverter erros rapidamente
* Replicar o ambiente em outro Raspberry
* Manter histórico da evolução da automação

---

## 🧱 Stack Utilizada

* **Raspberry Pi 3**
* **Docker + Docker Compose**
* **Home Assistant (Container)**
* **Mosquitto MQTT**
* **Node-RED**
* **ESPHome**
* **Portainer**
* **Git (GitHub/GitLab)**

---

## 📁 Estrutura do Repositório

```
ByteHomeLab/
├─ docker/
│  └─ docker-compose.yml
│
├─ homeassistant/
│  ├─ configuration.yaml
│  ├─ automations.yaml
│  ├─ scenes.yaml
│  └─ secrets.yaml.example
│
├─ nodered/
│  ├─ flows.json
│  └─ README.md
│
├─ esphome/
│  ├─ sala/
│  │  └─ esp32_sala.yaml
│  ├─ quarto1/
│  └─ common/
│     ├─ wifi.yaml
│     └─ mqtt.yaml
│
├─ mqtt/
│  └─ topics.md
│
├─ scripts/
│  └─ backup_git.sh
│
├─ diagrams/
│  └─ arquitetura.drawio
│
├─ .gitignore
└─ README.md
```

---

## 🔐 Segurança

Arquivos sensíveis **NÃO** devem ser versionados:

* `secrets.yaml`
* Tokens
* Senhas MQTT

Use arquivos `.example` como modelo.

---

## 🔁 Fluxo de Automação (Resumo)

```
ESP32 → MQTT → Node-RED → Home Assistant → Dashboard
```

* ESP32 envia eventos
* Node-RED decide a lógica
* Home Assistant gerencia entidades e UI

---

## 🔄 Backup Automático

O ByteHomeLab possui script para:

* Commit automático
* Push para repositório remoto
* Execução via `cron`

Ver: `scripts/backup_git.sh`

---

## 🧪 Filosofia do Projeto

* Automação deve ser **simples, visível e versionada**
* Node-RED para lógica
* Home Assistant para interface
* ESP32 para interação física
* Git como memória do sistema

---

## 🏷️ Convenção de Commits

```
feat: nova automação ou dispositivo
fix: correção de fluxo ou configuração
chore: organização/infra
refactor: melhoria sem mudar comportamento
docs: documentação
```

---

## 📌 Status

🚧 Projeto em evolução contínua

Cada automação nova é um commit.
Cada erro corrigido é aprendizado versionado.

---

## 🧠 Nome

**ByteHomeLab** = Byte (tecnologia) + Home (casa/homelab) + Lab (experimentos)

---

## 🧱 Hardware

Este projeto roda em um **Raspberry Pi 3**, utilizando um *case customizado* desenvolvido especificamente para homelab.

🔗 Referência do case:

* Raspberry Pi 3 Custom Case (Open Source)
* Repositório: PatrickCalorioCarvalho / CaseRaspberryPi

O uso de um case dedicado melhora:

* ventilação
* organização do homelab
* manutenção e acesso aos componentes

---

🔥 *Automatizado, versionado e sob controle.*
