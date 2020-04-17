# esx_datastore

## Download e Instalação

### Usando [fvm](https://github.com/qlaffont/fvm-installer)
```
fvm install --save --folder=esx ESX-Brasil/esx_datastore
```

### Usando o Git
```
cd resources
git clone https://github.com/ESX-Brasil/esx_datastore [esx]/esx_datastore
```

### Manualmente
- Download https://github.com/ESX-Brasil/esx_datastore/archive/master.zip
- Coloque-o no diretório `[esx]`

## Instalação
- Importe o `esx_datastore.sql` em seu banco de dados
- Adicione isto em seu `server.cfg`:

```
start esx_datastore
```

## Uso
Existem dois tipos de armazenamento de dados: compartilhados e não compartilhados.

- Os armazenamentos de dados compartilhados não pertencem a um usuário específico. Exemplo: arsenal de polícia
- Os armazenamentos de dados sem nenhum compartilhamento são criados para cada usuário no servidor. Eles são criados em db quando o jogador é carregado, Exemplo: propriedade (armas, vestir).

### `datastore` informação do banco de dados
Um datastore deve ser configurado no banco de dados antes de usá-lo. Não esqueça de executar uma reinicialização do servidor depois (você pode alternativamente reiniciar o script e relogar todos os clientes)

| `nome`   | `rótulo` | `compartilhado` |
| -------- | ------- | -------- |
| nome do armazenamento de dados | rótulo do armazenamento de dados (não usado) | o armazenamento de dados é compartilhado com outras pessoas? (booleano ou `0` ou` 1`) |

```lua
TriggerEvent('esx_datastore:getSharedDataStore', 'police', function(store)
	local weapons = store.get('weapons') or {}

	table.insert(weapons, {name = 'WEAPON_PUMPSHOTGUN', ammo = 50})
	store.set('weapons', weapons)
end)

TriggerEvent('esx_datastore:getDataStore', 'property', 'steam:0123456789', function(store)
	local dressing = store.get('dressing') or {}
end)
```

# Legal
### License
esx_datastore - datastore inventory for ESX

Copyright (C) 2015-2019 Jérémie N'gadi

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
