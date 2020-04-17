# esx_addoninventory

## Download e Instalação

### Usando [fvm](https://github.com/qlaffont/fvm-installer)
```
fvm install --save --folder=esx ESX-Brasil/esx_addoninventory
```

### Usando o Git
```
cd resources
git clone https://github.com/ESX-Brasil/esx_addoninventory [esx]/esx_addoninventory
```

### Manualmente
- Download https://github.com/ESX-Brasil/esx_addoninventory/archive/master.zip
- Coloque-o no diretório `[esx]`

## Instalação
- Importar `esx_addoninventory.sql` em seu banco de dados
- Adicione isto em seu `server.cfg`:

```
start esx_addoninventory
```

## Uso
Existem dois tipos de inventários: compartilhados e não compartilhados.

- Os inventários compartilhados não pertencem a um usuário específico. Exemplo: itens da loja de alimentos.
- Inventários sem nenhum compartilhamento são criados para cada usuário no servidor. Eles são criados em db quando o player é carregado. Exemplo: itens de propriedade

### `addon_inventory` informação do banco de dados
Um inventário de addons deve ser configurado no banco de dados antes de usá-lo. Não esqueça de executar uma reinicialização do servidor depois (você pode alternativamente reiniciar o script e relogar todos os clientes)

| `nome`   | `rótulo` | `compartilhado` |
| -------- | ------- | -------- |
| nome do inventário | rótulo da conta (não usado) | a conta é compartilhada com outras pessoas? (booleano ou `0` ou` 1`) |

```lua
TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)
	inventory.addItem('bread', 1)
end)

TriggerEvent('esx_addoninventory:getInventory', 'property', 'steam:0123456789', function(inventory)
	inventory.removeItem('water', 1)
end)

```

# Discord

[![Join ESX Brasil](https://discordapp.com/api/guilds/693468263161659402/embed.png?style=banner2)](https://discord.gg/ZGXTsdN)

# Legal
### License
esx_addoninventory - inventories!

Copyright (C) 2015-2020 ESX-Brasil

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
