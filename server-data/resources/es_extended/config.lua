Config = {}
Config.Locale = 'br'

Config.Accounts = {
	bank = _U('account_bank'),
	black_money = _U('account_black_money'),
	money = _U('account_money')
}

Config.StartingAccountMoney = {bank = 50000}

Config.EnableSocietyPayouts = false -- pagar da conta da sociedade em que o jogador está empregado? Requisito: esx_society
Config.DisableWantedLevel   = true
Config.EnableHud            = true -- ativar o hud padrão? Exibir trabalhos e contas atuais (preto, banco e dinheiro)
Config.EnablePvP            = true -- ativar o pvp?
Config.MaxWeight            = 100   -- o peso máximo do inventário sem mochila

Config.PaycheckInterval     = 7 * 60000 -- com que frequência receber cheques de pagamento em milissegundos
Config.CoordsSyncInterval   = 2 * 60000 -- com que frequência sincronizar coords com o servidor em milissegundos

Config.EnableDebug          = false
