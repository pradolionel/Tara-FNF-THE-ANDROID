--its like 3am i need to go to sleep soon lmao

function onCreate()

	makeLuaSprite('house','project/main', -900, -1050);
	setObjectOrder('house',0);
	setScrollFactor('house', 0.99,0.99);
	addLuaSprite('sky',false);

	makeLuaSprite('desk','project/desk', -400, 650);
	setObjectOrder('desk',1);
	setScrollFactor('desk', 0.97,0.97);
	addLuaSprite('desk',false);

	makeLuaSprite('can','project/OilCanProbably', 150, 500);
	setObjectOrder('can',2);
	setScrollFactor('can', 0.97,0.97);
	addLuaSprite('can',false);

	makeLuaSprite('cool','project/guh', -900, -1150);
	setObjectOrder('cool',3);
	setScrollFactor('cool', 0.97,0.97);
	addLuaSprite('cool',false);
	doTweenAlpha('coolhide', 'cool', 0.25, 0.001, 'circIn')

	makeLuaSprite('view','project/view', -100, -100);
	setObjectOrder('view',4);
	scaleObject('view',1.4, 1.4);
	setScrollFactor('view', 0 , 0);
	addLuaSprite('view',false);
	doTweenAlpha('viewhide', 'view', 0, 0.001, 'circIn')

	--yeah lmao thats it

end