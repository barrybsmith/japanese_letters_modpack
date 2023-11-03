--Cherokee Tsalagi mod
--by Yona
-- v 0.1 (17_March_2023)


local tsalagi_list = {
	"001_a","002_e","003_i","004_o","005_u","006_v","007_ga","008_ka","009_ge","010_gi","011_go","012_gu","013_gv","014_ha","015_he","016_hi","017_ho","018_hu","019_hv","020_la","021_le","022_li","023_lo","024_lu","025_lv","026_ma","027_me","028_mi","029_mo","030_mu","031_mv","032_na","033_hna","034_nha","035_ne","036_ni","037_no","038_nu","039_nv","040_qua","041_que","042_qui","043_quo","044_quu","045_quv","046_s","047_sa","048_se","049_si","050_so","051_su","052_sv","053_da","054_ta","055_de","056_te","057_di","058_ti","059_do","060_du","061_dv","062_dla","063_tla","064_tle","065_tli","066_tlo","067_tlu","068_tlv","069_tsa","070_tse","071_tsi","072_tso","073_tsu","074_tsv","075_wa","076_we","077_wi","078_wo","079_wu","080_wv","081_ya","082_ye","083_yi","084_yo","085_yu","086_yv", "087___","088_exclamation","089_question"
}

for _, i in ipairs(tsalagi_list) do
	minetest.register_node("tsalagi_letters:tsalagi"..i, {
		tiles = {i..".png"},
		inventory_image = i..".png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		climbable = false,
		diggable = true,
		drawtype = "nodebox",
		groups = { choppy = 3, oddly_breakable_by_hand = 1},
		--material = minetest.digprop_constanttime(1.0),
		description = i
	})
end

table.remove(tsalagi_list, 1)

if minetest.get_modpath("i3") then
	i3.compress("tsalagi_letters:tsalagi001_a", {
		replace = "001_a",
		by = tsalagi_list
	})
end
