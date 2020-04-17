# esx_society

Gestão da sociedade para ESX. Adiciona gerenciamento de funcionários (contratar, demitir, promover / rebaixar, alterar salário), contas bancárias da sociedade e lavagem de dinheiro. É crucial que esse script seja iniciado antes que todos os recursos que utilizam as sociedades o façam; caso contrário, muitas coisas darão errado.

## Requisitos
- [cron](https://github.com/ESX-Brasil/cron)
- [esx_addonaccount](https://github.com/ESX-Brasil/esx_addonaccount)

## Download e Instalação

### Usando [fvm](https://github.com/qlaffont/fvm-installer)
```
fvm install --save --folder=esx esx-brasil/esx_society
```

### Usando Git
```
cd resources
git clone https://github.com/ESX-Brasil/esx_society [esx]/esx_society
```

### Manualmente
- Download https://github.com/ESX-Brasil/esx_society/archive/master.zip
- Coloque no diretório `[esx]`

## Instalação
- Importe `esx_society.sql` no seu banco de dados
- Adicione isso no seu `server.cfg`:

```
start esx_society
```

## Explicação
A ESX Society trabalha com contas adicionais denominadas 'society_xxx', por exemplo 'society_taxi' ou 'society_realestateagent'. Se você classificar como chefe, o dinheiro da sociedade será exibido em seu hud.

## Como usar
```lua
local society = 'taxi'
local amount  = 100

TriggerServerEvent('esx_society:withdrawMoney', society, amount)
TriggerServerEvent('esx_society:depositMoney', society, amount)
TriggerServerEvent('esx_society:washMoney', society, amount)


TriggerEvent('esx_society:openBossMenu', society, function (data, menu)
	menu.close()
end, {wash = false}) -- set custom options, e.g disable washing
```

# Discord

[![Join ESX Brasil](https://discordapp.com/api/guilds/693468263161659402/embed.png?style=banner2)](https://discord.gg/ZGXTsdN)

# Legal
### License
esx_society - societies for ESX

Copyright (C) 2015-2020 ESXBrasil

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
