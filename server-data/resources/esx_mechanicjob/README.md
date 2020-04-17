# esx_mechanicjob

## requisitos

* Modo automático
  * Não há necessidade de baixar outro recurso

* Gerenciamento de jogadores (ações de cobrança e chefe)
  * [esx_society](https://github.com/ESX-Brasil/esx_society)
  * [esx_billing](https://github.com/ESX-Brasil/esx_billing)

## Download e Instalação

### utilização [fvm](https://github.com/qlaffont/fvm-installer)
```
fvm install --save --folder=esx ESX-Brasil/esx_mechanicjob
```

### Usando o Git
```
cd resources
git clone https://github.com/ESX-Brasil/esx_mechanicjob [esx]/esx_mechanicjob
```

### manualmente
- Download https://github.com/ESX-Brasil/esx_mechanicjob/archive/master.zip
- Coloque em seu diretorio `[esx]`

## instalação
- Importer `esx_mechanicjob.sql` para seu banco de dados
- Se você quiser um jogador `Config.EnablePlayerManagement` para `true` em `config.lua`
- Add isto em seu `server.cfg`:

```
start esx_mechanicjob
```

# Legal
### License
esx_mechanicjob - mechanic job for ESX

Copyright (C) 2015-2019 Jérémie N'gadi

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
