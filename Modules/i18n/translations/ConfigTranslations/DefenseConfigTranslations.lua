---@type i18n
local i18n = ECSLoader:ImportModule("i18n")

local defenseConfigTranslations = {
    ["Show Defense Stats"] = {
        ["enUS"] = true,
        ["deDE"] = "Verteidigungswerte anzeigen",
        ["frFR"] = "Défense Général",
        ["zhCN"] = "显示防御属性",
        ["ruRU"] = "Защита",
        ["esES"] = "Mostrar defensa",
        ["esMX"] = "Mostrar defensa",
    },
    ["Shows/Hides all defense stats."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt alle Verteidigungswerte.",
        ["frFR"] = "Affiche/cache toutes les statistiques de défense.",
        ["zhCN"] = "显示/隐藏 所有防御属性",
        ["ruRU"] = "Показать/скрыть все характеристики защиты",
        ["esES"] = "Muestra/oculta todas estadísticas de defensa",
        ["esMX"] = "Muestra/oculta todas estadísticas de defensa",
    },
    ["Shows/Hides the armor value."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt den Rüstungswert.",
        ["frFR"] = "Affiche/cache la valeur de l'armure.",
        ["zhCN"] = "显示/隐藏 护甲值",
        ["ruRU"] = "Показать/скрыть значение брони",
        ["esES"] = "Muestra/oculta el valor de armadura",
        ["esMX"] = "Muestra/oculta el valor de armadura",
    },
    ["Shows/Hides the percentage of being crit immune."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt die erreichte Crit Immunität in Prozent.",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = "Показать/скрыть шанс невосприимчивости к критическому урону",
        ["esES"] = "Muestra/oculta el porcentaje de inmunidad a los críticos.",
        ["esMX"] = "Muestra/oculta el porcentaje de inmunidad a los críticos.",
    },
    ["Shows/Hides the reduction percentage of being critically hit."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt, um wie viel Prozent die Chance kritisch getroffen zu werden reduziert ist.",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = "Показать/скрыть шанс снижения вероятности получить критический урон",
        ["esES"] = "Muestra/oculta el porcentaje de reducción de ser golpeado críticamente.",
        ["esMX"] = "Muestra/oculta el porcentaje de reducción de ser golpeado críticamente.",
    },
    ["Shows/Hides the defense value."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt die den Verteidigungswert.",
        ["frFR"] = "Affiche/cache la valeur de défense.",
        ["zhCN"] = "显示/隐藏 防御值",
        ["ruRU"] = "Показать/скрыть значение защиты",
        ["esES"] = "Muestra/oculta el valor de defensa.",
        ["esMX"] = "Muestra/oculta el valor de defensa.",
    },
    ["Shows/Hides the defense rating."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt die Verteidigungswertung.",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = "Показать/скрыть значение дополнительной защиты",
        ["esES"] = "Muestra/oculta el la calificación de defensa.",
        ["esMX"] = "Muestra/oculta el la calificación de defensa.",
    },
    ["Shows/Hides the block chance."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt die Blockchance.",
        ["frFR"] = "Affiche/cache les chances de bloquer.",
        ["zhCN"] = "显示/隐藏 格挡几率",
        ["ruRU"] = "Показать/скрыть значение шанса блокирования",
        ["esES"] = "Muestra/oculta la probababilidad de bloquear.",
        ["esMX"] = "Muestra/oculta la probababilidad de bloquear.",
    },
    ["Shows/Hides the block value."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt die Blockwertung.",
        ["frFR"] = "Affiche/cache la valeur de bloquage.",
        ["zhCN"] = "显示/隐藏 格挡值",
        ["ruRU"] = "Показать/скрыть значение рейтинга блокирования",
        ["esES"] = "Muestra/oculta el valor de bloqueo.",
        ["esMX"] = "Muestra/oculta el valor de bloqueo.",
    },
    ["Shows/Hides the parry chance."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt die Parrierwertung.",
        ["frFR"] = "Affiche/cache les chances de parer.",
        ["zhCN"] = "显示/隐藏 招架几率",
        ["ruRU"] = "Показать/скрыть шанс парирования атак",
        ["esES"] = "Muestra/oculta la probabilidad de parar.",
        ["esMX"] = "Muestra/oculta la probabilidad de parar.",
    },
    ["Shows/Hides the dodge chance."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt die Ausweichchance.",
        ["frFR"] = "Affiche/cache les chances d'esquiver.",
        ["zhCN"] = "显示/隐藏 躲闪几率",
        ["ruRU"] = "Показать/скрыть шанс уклонения от атак",
        ["esES"] = "Muestra/oculta la probabilidad de esquivar.",
        ["esMX"] = "Muestra/oculta la probabilidad de esquivar.",
    },
    ["Shows/Hides the resilience value."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt den Abhärtungswert.",
        ["frFR"] = "Affiche/cache la valeur de résilience.",
        ["zhCN"] = false,
        ["ruRU"] = "Показать/скрыть значение устойчивости",
        ["esES"] = "Muestra/oculta el valor de temple.",
        ["esMX"] = "Muestra/oculta el valor de temple.",
    },
    ["Shows/Hides the total avoidance."] = {
        ["enUS"] = true,
        ["deDE"] = "Zeigt/Versteckt den Vermeidungswert.",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = false,
        ["esES"] = "Muestra/oculta eludir.",
        ["esMX"] = "Muestra/oculta eludir.",
    },
}

for k, v in pairs(defenseConfigTranslations) do
    i18n.translations[k] = v
end
