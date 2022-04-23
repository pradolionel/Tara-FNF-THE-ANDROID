local xx = 280;
local yy = 280;
local xx2 = 800;
local yy2 = 600;
local ofs = 25;
local followchars = false;
--i totally didnt copy and paste code from the berdly update teehee shhhhh

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('demoCutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	
	setProperty('skipCountdown', true);
	doTweenAlpha('GUItween', 'camHUD', 0, 0.01, 'linear')
	setProperty('healthBar.y', (downscroll and -220 or 740))
    setProperty('iconP1.y', (downscroll and -220 or 740))
    setProperty('iconP2.y', (downscroll and -220 or 740))
	setProperty('scoreTxt.y', (downscroll and -220 or 740))
    setProperty('timeBar.y', (downscroll and 740 or -40))
    setProperty('timeTxt.y', (downscroll and 740 or -40))
	--for fading in lolol
	makeLuaSprite('fader','',-800,-500)
	makeGraphic('fader',2500,1500,'000000')
	addLuaSprite('fader',true)
	setObjectCamera('fader','game')

	--makeLuaSprite('bartop','',0,-100) --(0,0)
	makeGraphic('bartop',1280,100,'000000')
	addLuaSprite('bartop',true)

	--makeLuaSprite('barbot','',0,720) --(0,620)
	makeGraphic('barbot',1280,100,'000000')
	addLuaSprite('barbot',true)
	setScrollFactor('bartop',0,0)
	setScrollFactor('barbot',0,0)
	setObjectOrder('bartop',5);
	setObjectOrder('barbot',5);
	setObjectCamera('bartop','hud')
	setObjectCamera('barbot','hud')

	doTweenAlpha('dadTween', 'dad', 0, 0.001, 'linear');
	doTweenAlpha('bfTween', 'boyfriend', 0, 0.001, 'linear');
    

end

function onStepHit()

	if curStep == 1 then
		--makeLuaText('title', 'Friday Night Fantastic', 1000, 130, 600)
		setObjectOrder('title',6);
		setTextAlignment('title', 'center')
		setObjectCamera('title', 'other')
		setTextSize('title', 40)
		--setTextFont('title', 'awesome.ttf')
		doTweenAlpha('titletween', 'title', 0, 0.001, 'circIn')
		addLuaText('title')
		doTweenAlpha('titletween', 'title', 1, 0.2, 'circOut')
		doTweenAlpha('fadertween', 'fader', 0, 4, 'quadInOut')
		
	end

	if curStep == 5 then
		noteTweenAlpha('first', 0, 0, 0.01, 'linear')
		noteTweenAlpha('second', 1, 0, 0.01, 'linear')
		noteTweenAlpha('third', 2, 0, 0.01, 'linear')
		noteTweenAlpha('fourth', 3, 0, 0.01, 'linear')
		noteTweenAlpha('fifth', 4, 0, 0.01, 'linear')
		noteTweenAlpha('sixth', 5, 0, 0.01, 'linear')
		noteTweenAlpha('seventh', 6, 0, 0.01, 'linear')
		noteTweenAlpha('eighth', 7, 0, 0.01, 'linear')
	end

	if curStep == 44 then
		doTweenAlpha('titletweentwo', 'title', 0, 1, 'circOut')
		doTweenY('titletweenthree', 'title', 1500, 3, 'circIn')
	end

	if curStep == 48 then
		--makeLuaText('mod', 'A mod by Edvintually', 1000, 130, 600)
		setObjectOrder('mod',7);
		setTextAlignment('mod', 'center')
		setObjectCamera('mod', 'other')
		setTextSize('mod', 40)
		--setTextFont('mod', 'awesome.ttf')
		doTweenAlpha('modtween', 'mod', 0, 0.001, 'circIn')
		addLuaText('mod')
		doTweenAlpha('modtween', 'mod', 1, 0.2, 'circOut')
		--doTweenAlpha('GUItween', 'camHUD', 1, 0.01, 'linear')
		
		doTweenY('botlol', 'barbot', 620, 12.5, 'linear')
		doTweenY('topwow', 'bartop', 0, 12.5, 'linear')
	end

	if curStep == 92 then
		doTweenAlpha('modtweentwo', 'mod', 0, 1, 'circOut')
		doTweenY('modtweenthree', 'mod', 1500, 3, 'circIn')
		removeLuaText('title', true)
	end

	if curStep == 96 then
		--makeLuaText('based', 'Based on \'I Feel Fantastic\'', 1000, 130, 600)
		setObjectOrder('based',8);
		setTextAlignment('based', 'center')
		setObjectCamera('based', 'other')
		setTextSize('based', 40)
		--setTextFont('based', 'awesome.ttf')
		doTweenAlpha('basedtween', 'based', 0, 0.001, 'circIn')
		addLuaText('based')
		doTweenAlpha('basedtween', 'based', 1, 0.2, 'circOut')

	end

	if curStep == 140 then
		doTweenAlpha('basedtweentwo', 'based', 0, 1, 'circOut')
		doTweenY('basedtweenthree', 'based', 1500, 3, 'circIn')
		removeLuaText('mod', true)
	end

	if curStep == 144 then
		--makeLuaText('time', 'Made in 4 days', 1000, 130, 600)
		setObjectOrder('time',9);
		setTextAlignment('time', 'center')
		setObjectCamera('time', 'other')
		setTextSize('time', 40)
		--setTextFont('mod', 'awesome.ttf')
		doTweenAlpha('timetween', 'time', 0, 0.001, 'circIn')
		addLuaText('time')
		doTweenAlpha('timetween', 'time', 1, 0.2, 'circOut')

	end

	if curStep == 170 then
		--ight the hud shit comes back now
		doTweenAlpha('timetweentwo', 'time', 0, 1, 'circOut')
		doTweenY('timetweenthree', 'time', 1500, 3, 'circIn')
		removeLuaText('based', true)
     	followchars = true;
		doTweenY('scoretween', 'scoreTxt', (downscroll and 115 or 675), 2, 'circOut')
		doTweenY('healthtween', 'healthBar', (downscroll and 80 or 645), 2, 'circOut')
		doTweenY('icon1tween', 'iconP1', (downscroll and 8 or 570), 2, 'circOut')
		doTweenY('icon2tween', 'iconP2', (downscroll and 8 or 570), 2, 'circOut')
        doTweenY('bartween', 'timeBar', (downscroll and 689 or 36), 2, 'circOut')
        doTweenY('texttween', 'timeTxt', (downscroll and 674 or 26), 2, 'circOut')
		removeLuaSprite('noteExample', true)
		--note show opponent
		noteTweenAlpha('first', 0, (middlescroll and 0.5 or 1), 1, 'circOut')
		noteTweenAlpha('second', 1, (middlescroll and 0.5 or 1), 1, 'circOut')
		noteTweenAlpha('third', 2, (middlescroll and 0.5 or 1), 1, 'circOut')
		noteTweenAlpha('fourth', 3, (middlescroll and 0.5 or 1), 1, 'circOut')
		--note half show player
		noteTweenAlpha('fifth', 4, 1, 1, 'circOut')
		noteTweenAlpha('sixth', 5, 1, 1, 'circOut')
		noteTweenAlpha('seventh', 6, 1, 1, 'circOut')
		noteTweenAlpha('eighth', 7, 1, 1, 'circOut')
	end

	if curStep == 220 then
		removeLuaText('time', true)
	end

	if curStep == 1147 then
		followchars = false;
		setProperty('defaultCamZoom',0.7)
		triggerEvent('Camera Follow Pos',280,280)
		doTweenAlpha('coolshow', 'cool', 0.4, 10, 'circIn')
	end

	if curStep == 1152 then
		doTweenAlpha('viewshow', 'view', 0.90, 10, 'linear')
	end

	if curStep == 1248 then
		setProperty('defaultCamZoom',0.8)
		triggerEvent('Camera Follow Pos',800,600)
		doTweenAlpha('coolshowtoher', 'cool', 0.6, 10, 'circIn')
	end

	if curStep == 1332 then
		doTweenAlpha('viewshow', 'view', 0, 3, 'linear')
	end

	if curStep == 1344 then
		followchars = true;
		doTweenAlpha('coolhideother', 'cool', 0.25, 5, 'circIn')
	end

end

function onUpdate()

	if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',1.3)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',1.2)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end

end