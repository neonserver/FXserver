# esx_addonaccount

## Download e Instalação

### Usando [fvm](https://github.com/qlaffont/fvm-installer)
```
fvm install --save --folder=esx ESX-Brasil/esx_addonaccount
```

### Usando o Git
```
cd resources
git clone https://github.com/ESX-Brasil/esx_addonaccount [esx]/esx_addonaccount
```

### Manualmente
- Download https://github.com/ESX-Brasil/esx_addonaccount/archive/master.zip
- Coloque-o no diretório `[esx]`

## Instalação
- Importar `esx_addonaccount.sql` em seu banco de dados
- Adicione isto em seu `server.cfg`:

```
start esx_addonaccount
```

## Uso
Existem dois tipos de contas: compartilhadas e não compartilhadas.

- Contas compartilhadas não pertencem a um usuário específico. Exemplo: contas da sociedade.
- Nenhuma conta compartilhada é criada para todos os usuários no servidor. Eles são criados em db quando o player é carregado, Exemplo: property black money

### `addon_account` informação do banco de dados
Uma conta addon deve ser configurada no banco de dados antes de usá-lo. Não esqueça de executar uma reinicialização do servidor depois (você pode alternativamente reiniciar o script e relogar todos os clientes)

| `nome`   | `rótulo` | `compartilhado` |
| -------- | ------- | -------- |
| nome da conta | rótulo da conta (não usado) | a conta é compartilhada com outras pessoas? (booleano ou `0` ou` 1`) |

```lua
TriggerEvent('esx_addonaccount:getSharedAccount', 'society_realestateagent', function(account)
	account.addMoney(500)
end)

TriggerEvent('esx_addonaccount:getAccount', 'property_black_money', 'steam:0123456789', function(account)
	account.removeMoney(500)
end)
```

# Discord

[![Join ESX Brasil](https://discordapp.com/api/guilds/693468263161659402/embed.png?style=banner2)](https://discord.gg/ZGXTsdN)

# Legal
### License
esx_addonaccount - addon account for ESX

Copyright (C) 2015-2020 ESXBrasil

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
