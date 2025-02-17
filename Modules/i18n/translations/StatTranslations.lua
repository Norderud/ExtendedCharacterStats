---@type i18n
local i18n = ECSLoader:ImportModule("i18n")

local statTranslations = {
    ["General"] = {
        ["enUS"] = true,
        ["deDE"] = "Allgemein",
        ["frFR"] = "Général",
        ["zhCN"] = "一般",
        ["ruRU"] = "Основные",
        ["esES"] = true,
        ["esMX"] = true
    },
    ["Movement Speed"] = {
        ["enUS"] = true,
        ["deDE"] = "Geschwindigkeit",
        ["frFR"] = "Vitesse de déplacement",
        ["zhCN"] = "移动速度",
        ["ruRU"] = "Скорость движения",
        ["esES"] = "Velocidad de movimiento",
        ["esMX"] = "Velocidad de movimiento"
    },
    ["Melee"] = {
        ["enUS"] = true,
        ["deDE"] = "Nahkampf",
        ["frFR"] = "Mêlée",
        ["zhCN"] = "近战",
        ["ruRU"] = "Ближний бой",
        ["esES"] = "Cuerpo a cuerpo",
        ["esMX"] = "Cuerpo a cuerpo"
    },
    ["Attack Power"] = {
        ["enUS"] = true,
        ["deDE"] = "Angriffskraft",
        ["frFR"] = "Puissance d'attaque",
        ["zhCN"] = "攻击强度",
        ["ruRU"] = "Сила атаки",
        ["esES"] = "Poder de ataque",
        ["esMX"] = "Poder de ataque"
    },
    ["Crit Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Kritische Chance",
        ["frFR"] = "Chances de critique",
        ["zhCN"] = "暴击几率",
        ["ruRU"] = "Крит",
        ["esES"] = "Probabilidad de golpe crítico",
        ["esMX"] = "Probabilidad de golpe crítico"
    },
    ["Armor Pen."] = {
        ["enUS"] = true,
        ["deDE"] = "Rüstungsdurchschlagskraft",
        ["frFR"] = "Pénétration d'armure",
        ["zhCN"] = false,
        ["ruRU"] = "Проник. способ. броня",
        ["esES"] = "Penetración de armadura",
        ["esMX"] = "Penetración de armadura"
    },
    ["Armor Pen. Rating"] = {
        ["enUS"] = true,
        ["deDE"] = "Rüstungsdurchschlagwertung",
        ["frFR"] = "Score de pénétration d'armure",
        ["zhCN"] = false,
        ["ruRU"] = false,
        ["esES"] = "Índice de penetración de armadura",
        ["esMX"] = "Índice de penetración de armadura"
    },
    ["Expertise"] = {
        ["enUS"] = true,
        ["deDE"] = "Waffenkunde",
        ["frFR"] = "Expertise",
        ["zhCN"] = false,
        ["ruRU"] = "Мастерство",
        ["esES"] = "Pericia",
        ["esMX"] = "Pericia"
    },
    ["Expertise Rating"] = {
        ["enUS"] = true,
        ["deDE"] = "Waffenkundewertung",
        ["frFR"] = "Score d'expertise",
        ["zhCN"] = false,
        ["ruRU"] = "Рейтинг мастерства",
        ["esES"] = "Índice de pericia",
        ["esMX"] = "Índice de pericia"
    },
    ["Hit"] = {
        ["enUS"] = true,
        ["deDE"] = "Trefferchance",
        ["frFR"] = "Toucher",
        ["zhCN"] = "命中",
        ["ruRU"] = "Меткость",
        ["esES"] = "Probabilidad de golpear",
        ["esMX"] = "Probabilidad de golpear",
    },
    ["Rating"] = {
        ["enUS"] = true,
        ["deDE"] = "Wertung",
        ["frFR"] = "Score",
        ["zhCN"] = false,
        ["ruRU"] = "Меткость",
        ["esES"] = "Índice",
        ["esMX"] = "Índice",
    },
    ["Bonus"] = {
        ["enUS"] = true,
        ["deDE"] = true,
        ["frFR"] = true,
        ["zhCN"] = "命中",
        ["ruRU"] = "Бонус",
        ["esES"] = true,
        ["esMX"] = true,
    },
    ["Miss"] = {
        ["enUS"] = true,
        ["deDE"] = "Verfehlen",
        ["frFR"] = "Rater",
        ["zhCN"] = "未命中",
        ["ruRU"] = "Сопротивление",
        ["esES"] = "Fallo",
        ["esMX"] = "Fallo",
    },
    ["Miss (Lvl + 3)"] = {
        ["enUS"] = true,
        ["deDE"] = "Verfehlen (Lvl + 3)",
        ["frFR"] = "Rater (Lvl + 3)",
        ["zhCN"] = "未命中 (等级 + 3)",
        ["ruRU"] = "Сопрот. (+3 ур.)",
        ["esES"] = "Fallo (Niv. + 3)",
        ["esMX"] = "Fallo (Niv. + 3)",
    },
    ["Haste Rating"] = {
        ["enUS"] = true,
        ["deDE"] = "Tempowertung",
        ["frFR"] = "Score de hâte",
        ["zhCN"] = false,
        ["ruRU"] = "Рейтинг скорости",
        ["esES"] = "Índice de celeridad",
        ["esMX"] = "Índice de celeridad",
    },
    ["Haste Bonus"] = {
        ["enUS"] = true,
        ["deDE"] = "Tempobonus",
        ["frFR"] = "Bonus de hâte",
        ["zhCN"] = false,
        ["ruRU"] = "Бонус к скорости",
        ["esES"] = "Bonus de celeridad",
        ["esMX"] = "Bonus de celeridad",
    },
    ["Attack Speed"] = {
        ["enUS"] = true,
        ["deDE"] = "Angriffstempo",
        ["frFR"] = "Vitesse d'attaque",
        ["zhCN"] = false,
        ["ruRU"] = "Скорость атаки",
        ["esES"] = "Velocidad de ataque",
        ["esMX"] = "Velocidad de ataque",
    },
    ["Main Hand"] = {
        ["enUS"] = true,
        ["deDE"] = "Waffenhand",
        ["frFR"] = "Main d'arme",
        ["zhCN"] = false,
        ["ruRU"] = "Правая рука",
        ["esES"] = "Mano derecha",
        ["esMX"] = "Mano derecha",
    },
    ["Off Hand"] = {
        ["enUS"] = true,
        ["deDE"] = "Schildhand",
        ["frFR"] = "Main de bouclier",
        ["zhCN"] = false,
        ["ruRU"] = "Левая рука",
        ["esES"] = "Mano izquierda",
        ["esMX"] = "Mano izquierda",
    },
    ["Ranged"] = {
        ["enUS"] = true,
        ["deDE"] = "Fernkampf",
        ["frFR"] = "A distance",
        ["zhCN"] = "远程",
        ["ruRU"] = "Дальний бой",
        ["esES"] = "A distancia",
        ["esMX"] = "A distancia",
    },
    ["Armor"] = {
        ["enUS"] = true,
        ["deDE"] = "Rüstung",
        ["frFR"] = "Armure",
        ["zhCN"] = "护甲",
        ["ruRU"] = "Броня",
        ["esES"] = "Armadura",
        ["esMX"] = "Armadura",
    },
    ["Crit Immune"] = {
        ["enUS"] = true,
        ["deDE"] = "Krit. Immun",
        ["frFR"] = "Immunisé des critiques",
        ["zhCN"] = false,
        ["ruRU"] = "Крит иммун",
        ["esES"] = "Inmune Crít",
        ["esMX"] = "Inmune Crít",
    },
    ["Crit Reduction"] = {
        ["enUS"] = true,
        ["deDE"] = "Krit. Reduzierung",
        ["frFR"] = "Réduction des critiques",
        ["zhCN"] = false,
        ["ruRU"] = "Снижение крита",
        ["esES"] = "Reducción de Crít",
        ["esMX"] = "Reducción de Crít",
    },
    ["Avoidance"] = {
        ["enUS"] = true,
        ["deDE"] = "Vermeidung",
        ["frFR"] = "Evitement",
        ["zhCN"] = false,
        ["ruRU"] = "Избежание",
        ["esES"] = "Eludir",
        ["esMX"] = "Eludir",
    },
    ["Defense Rating"] = {
        ["enUS"] = true,
        ["deDE"] = "Verteidigungswertung",
        ["frFR"] = "Score de défense",
        ["zhCN"] = false,
        ["ruRU"] = "Доп. защита",
        ["esES"] = "Índice de defensa",
        ["esMX"] = "Índice de defensa",
    },
    ["Defense"] = {
        ["enUS"] = true,
        ["deDE"] = "Verteidigung",
        ["frFR"] = "Défense",
        ["zhCN"] = "防御",
        ["ruRU"] = "Защита",
        ["esES"] = "Defensa",
        ["esMX"] = "Defensa",
    },
    ["Block Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Blockchance",
        ["frFR"] = "Chances de bloquer",
        ["zhCN"] = "格挡几率",
        ["ruRU"] = "Шанс блока",
        ["esES"] = "Probabilidad de bloquear",
        ["esMX"] = "Probabilidad de bloquear",
    },
    ["Block Value"] = {
        ["enUS"] = true,
        ["deDE"] = "Blockwertung",
        ["frFR"] = "Bloquage",
        ["zhCN"] = "格挡值",
        ["ruRU"] = "Блок",
        ["esES"] = "Bloqueo",
        ["esMX"] = "Bloqueo",
    },
    ["Parry Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Parrierchance",
        ["frFR"] = "Chances de parrer",
        ["zhCN"] = "招架几率",
        ["ruRU"] = "Парирование",
        ["esES"] = "Probabilidad de parar",
        ["esMX"] = "Probabilidad de parar",
    },
    ["Dodge Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Ausweichchance",
        ["frFR"] = "Chances d'esquiver",
        ["zhCN"] = "躲闪几率",
        ["ruRU"] = "Уклонение",
        ["esES"] = "Probabilidad de esquivar",
        ["esMX"] = "Probabilidad de esquivar",
    },
    ["Resilience"] = {
        ["enUS"] = true,
        ["deDE"] = "Abhärtung",
        ["frFR"] = "Résilience",
        ["zhCN"] = false,
        ["ruRU"] = "Устойчивость",
        ["esES"] = "Temple",
        ["esMX"] = "Temple",
    },
    ["Mana"] = {
        ["enUS"] = true,
        ["deDE"] = true,
        ["frFR"] = true,
        ["zhCN"] = "法力回复",
        ["ruRU"] = "Мана",
        ["esES"] = "Maná",
        ["esMX"] = "Maná",
    },
    ["MP5 (Items)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Gegenstände)",
        ["frFR"] = "MP5 (Objets)",
        ["zhCN"] = "装备回蓝",
        ["ruRU"] = "MP5 (экип.)",
        ["esES"] = "MP5 (Objetos)",
        ["esMX"] = "MP5 (Objetos)",
    },
    ["MP5 (Spirit)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Willenskraft)",
        ["frFR"] = "MP5 (Esprit)",
        ["zhCN"] = "精神回蓝",
        ["ruRU"] = "MP5 (дух)",
        ["esES"] = "MP5 (Espíritu)",
        ["esMX"] = "MP5 (Espíritu)"
    },
    ["MP5 (Buffs)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Stärkungszauber)",
        ["frFR"] = "MP5 (Amélioration)",
        ["zhCN"] = "增益回蓝",
        ["ruRU"] = "MP5 (баффы)",
        ["esES"] = "MP5 (Beneficios)",
        ["esMX"] = "MP5 (Beneficios)"
    },
    ["MP5 (Casting)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Zaubernd)",
        ["frFR"] = "MP5 (Lancer)",
        ["zhCN"] = "附魔回蓝",
        ["ruRU"] = "MP5 (каст)",
        ["esES"] = "MP5 (Lanzar)",
        ["esMX"] = "MP5 (Lanzar)"
    },
    ["MP5 (Not casting)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Nicht zaubernd)",
        ["frFR"] = "MP5 (pas de diffusion)",
        ["zhCN"] = "MP5（非铸造）",
        ["ruRU"] = "MP5 (не каст)",
        ["esES"] = "MP5 (Sin lanzar)",
        ["esMX"] = "MP5 (Sin lanzar)"
    },
    ["Spell"] = {
        ["enUS"] = true,
        ["deDE"] = "Zauber",
        ["frFR"] = "Sorts",
        ["zhCN"] = "法术强度",
        ["ruRU"] = "Заклинания",
        ["esES"] = "Hechizo",
        ["esMX"] = "Hechizo"
    },
    ["Penetration"] = {
        ["enUS"] = true,
        ["deDE"] = "Durchschlagskraft",
        ["frFR"] = "Pénétration",
        ["zhCN"] = false,
        ["ruRU"] = "Проник. способ.",
        ["esES"] = "Penetración",
        ["esMX"] = "Penetración"
    },
    ["Spell Power"] = {
        ["enUS"] = true,
        ["deDE"] = "Zauberkraft",
        ["frFR"] = "Puissance des sorts",
        ["zhCN"] = "法术强度",
        ["ruRU"] = "Сила заклинаний",
        ["esES"] = "Poder con hechizos",
        ["esMX"] = "Poder con hechizos"
    },
    ["Healing Power"] = {
        ["enUS"] = true,
        ["deDE"] = "Heilungskraft",
        ["frFR"] = "Puissance des soins",
        ["zhCN"] = "法术治疗",
        ["ruRU"] = "Доп. исцеление",
        ["esES"] = "Sanación",
        ["esMX"] = "Sanación"
    },
    ["Arcane Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Arkanschaden",
        ["frFR"] = "Dégats des arcanes",
        ["zhCN"] = "奥术伤害",
        ["ruRU"] = "Тайная магия",
        ["esES"] = "Daño arcano",
        ["esMX"] = "Daño arcano"
    },
    ["Arcane Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Arkan Kritisch",
        ["frFR"] = "Critique des arcanes",
        ["zhCN"] = "奥术暴击",
        ["ruRU"] = "Крит (ТМ)",
        ["esES"] = "Crítico arcano",
        ["esMX"] = "Crítico arcano"
    },
    ["Fire Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Feuerschaden",
        ["frFR"] = "Dégats du feu",
        ["zhCN"] = "火焰伤害",
        ["ruRU"] = "Огонь",
        ["esES"] = "Daño de fuego",
        ["esMX"] = "Daño de fuego"
    },
    ["Fire Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Feuer Kritisch",
        ["frFR"] = "Critique du feu",
        ["zhCN"] = "火焰暴击",
        ["ruRU"] = "Крит (огонь)",
        ["esES"] = "Crítico de fuego",
        ["esMX"] = "Crítico de fuego"
    },
    ["Frost Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Frostschaden",
        ["frFR"] = "Dégats du givre",
        ["zhCN"] = "冰霜伤害",
        ["ruRU"] = "Лед",
        ["esES"] = "Daño de escarcha",
        ["esMX"] = "Daño de escarcha"
    },
    ["Frost Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Frost Kritisch",
        ["frFR"] = "Critique du givre",
        ["zhCN"] = "冰霜暴击",
        ["ruRU"] = "Крит (лед)",
        ["esES"] = "Crítico de escarcha",
        ["esMX"] = "Crítico de escarcha"
    },
    ["Holy Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Heiligschaden",
        ["frFR"] = "Dégats du sacré",
        ["zhCN"] = "神圣伤害",
        ["ruRU"] = "Свет",
        ["esES"] = "Daño sagrado",
        ["esMX"] = "Daño sagrado"
    },
    ["Holy Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Heilig Kritisch",
        ["frFR"] = "Critique du sacré",
        ["zhCN"] = "神圣暴击",
        ["ruRU"] = "Крит (свет)",
        ["esES"] = "Crítico sagrado",
        ["esMX"] = "Crítico sagrado"
    },
    ["Nature Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Naturschaden",
        ["frFR"] = "Dégats de la nature",
        ["zhCN"] = "自然伤害",
        ["ruRU"] = "Природа",
        ["esES"] = "Daño de la naturaleza",
        ["esMX"] = "Daño de la naturaleza"
    },
    ["Nature Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Natur Kritisch",
        ["frFR"] = "Critique de la nature",
        ["zhCN"] = "自然暴击",
        ["ruRU"] = "Крит (природа)",
        ["esES"] = "Crítico de la naturaleza",
        ["esMX"] = "Crítico de la naturaleza"
    },
    ["Physical Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Physischer Schaden",
        ["frFR"] = "Dégats physiques",
        ["zhCN"] = "物理伤害",
        ["ruRU"] = "Физ. урон",
        ["esES"] = "Daño físico",
        ["esMX"] = "Daño físico"
    },
    ["Physical Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Physisch Kritisch",
        ["frFR"] = "Critique physique",
        ["zhCN"] = "物理暴击",
        ["ruRU"] = "Крит (физ.)",
        ["esES"] = "Crítico físico",
        ["esMX"] = "Crítico físico"
    },
    ["Shadow Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Schattenschaden",
        ["frFR"] = "Dégats des ombres",
        ["zhCN"] = "暗影伤害",
        ["ruRU"] = "Тьма",
        ["esES"] = "Daño de las sombras",
        ["esMX"] = "Daño de las sombras"
    },
    ["Shadow Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Schatten Kritisch",
        ["frFR"] = "Critique des ombres",
        ["zhCN"] = "暗影暴击",
        ["ruRU"] = "Крит (тьма)",
        ["esES"] = "Crítico de las sombras",
        ["esMX"] = "Crítico de las sombras"
    },
}

for k, v in pairs(statTranslations) do
    i18n.translations[k] = v
end
