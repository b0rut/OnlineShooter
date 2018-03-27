/// @description Insert description here
// You can write your code in this editor
randomize();
image_index = choose(0, 1, 2);//choose a random tree to draw
image_speed = 0;//prohibit cycling through subimages
randomize();
xoff = x;
yoff = y;

//rotate each part randomly
part1 = random(360);
part2 = random(360);
part3 = random(360);
index1 = choose(0,1,2,3);
index2 = choose(0,1,2,3);
index3 = choose(0,1,2,3);

//set tree height. Smaller the value, the taller the tree
tree_height = 55;