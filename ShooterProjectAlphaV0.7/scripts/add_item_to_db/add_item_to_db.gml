///add item to database(name, type
///154,122,37
var name = argument0; //name of item
var type = argument1; // type of item [weapon, boots, shoes...]
var spr_shop_index = argument2; //index of the sprite image in shop
var item_spr_index = argument3;
var item_bonus = argument4; //gives bonus in value like armor=50, damage=30 etc...
var item_price = argument5; //price of item
var item_anim_shoot_index = argument6; // shooting sprite index of the animation for this weapon
var bullet_type = argument7;
var item_level = argument8;
var item_floor_id = argument9;
var item_quantity = argument10;
var stackable = argument11;
var recoil = argument12;
var primary_ammo = argument13;
var secondary_ammo = argument14;
var shoot_time = argument15;

var item = ds_map_create();
ds_map_add(item, "name", name);
ds_map_add(item, "id", ds_list_size(global.item_db));
ds_map_add(item, "type", type);
ds_map_add(item, "spr_shop_index", spr_shop_index);
ds_map_add(item, "item_spr_index",item_spr_index);
ds_map_add(item, "item_bonus",item_bonus);
ds_map_add(item, "item_price",item_price);
ds_map_add(item, "item_anim_shoot_index",item_anim_shoot_index);
ds_map_add(item, "bullet_type", bullet_type);
ds_map_add(item, "level", item_level);
ds_map_add(item, "item_floor_id", item_floor_id);
ds_map_add(item, "item_quantity", item_quantity);
ds_map_add(item, "item_stackable", stackable);
ds_map_add(item, "recoil", recoil);
ds_map_add(item, "primary_ammo", primary_ammo);
ds_map_add(item, "secondary_ammo", secondary_ammo);
ds_map_add(item, "shoot_time", shoot_time);


ds_list_add(global.item_db, item);


