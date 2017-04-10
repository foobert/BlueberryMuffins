# Making open source blueberry muffins!
#
# This work is licensed under the Creative Commons Attribution 3.0 Unported
# License. To view a copy of this license, visit
# http://creativecommons.org/licenses/by/3.0/ or send a letter to Creative
# Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.

MAIN_INGREDIENTS := 300g_flour 125_sugar 1tsp_baking_soda 2tsp_baking_powder 125g_soy_butter
SEC_INGREDIENTS := 125g_soy_joghurt splash_of_soy_milk

muffins: batter | muffin_form oven
	@echo "Fill batter into muffin form"
	@echo "Put muffin form into oven"
	@echo "Wait 25 minutes"
	@echo "Enjoy"

pre_batter: $(MAIN_INGREDIENTS) | bowl
	@echo "Mix $? in $|"

joghurt: $(SEC_INGREDIENTS) | bowl
	@echo "Mix $? in $| until smooth"

batter: pre_batter 1_big_chunk_of_frozen_blueberries
	@echo "Mix joghurt into prepared batter"
	@echo "Put blueberries into batter"

bowl:
	@echo "Grab a bowl"

oven:
	@echo "Heat oven to 200 degreees celcius"

muffin_form:
	@echo "Grab a muffin form"

%:
	@echo "Buy $*"
