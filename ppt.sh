# !/usr/bin/bash
###################################################
# Team: SYSU_WxW
# Author: Wenjie Wu (Lhfcws)
# Using  recordmydesktop
# As a video For IBM Power Tech Challenge Competition, China
###################################################

### VARS
gt=1.5
t=1.5
c=0.5
p=1.5
delay=0.4

### ALIAS
alias type='sh type.sh'
alias host='echo -e "\033[35m[root@SYSU]#\033[0m \c"'			# Colorize!!!
alias padd='clear && echo " " && clear && sh padding.sh'
alias padding='clear && sh padding.sh && host'
alias fehy='feh -F -Y -q --cycle-once'
alias feht='feh -q -Y -x'
alias asciiopen='gnome-terminal --profile=ascii -e "sh ascii.sh" --full-screen --hide-menubar'
alias asciiend='gnome-terminal --profile=ascii -e "sh end.sh" --full-screen --hide-menubar'

### FUNCTION
htype() {
	sleep ${delay}s
	type $*
}

team() {
#	convert -resize 355x768! img/team/1.png img/team/01.png
	feht -g +0+0 img/team/01.png &
#	convert -resize 355x768! img/team/2.png img/team/02.png
	sleep 0.5s
	feht -g +341+0 img/team/02.png &
#	convert -resize 355x768! img/team/3.png img/team/03.png
	sleep 0.5s
	feht -g +682+0 img/team/03.png &
#	convert -resize 355x768! img/team/4.png img/team/04.png
	sleep 0.5s
	feht -g +1023+0 img/team/04.png &
	sleep 1.5s
}

hef() {
	let "num=$#-2"
	interval=$1
#sleeptime=$(echo "$num*$interval"|bc)
#	sleeptime=$(echo "${sleeptime}-0.4"|bc)
	shift 1
	files=$*
#	for fl in $files
#	do
#		fehy $fl
#	padding
#		sleep ${interval}s
#		echo "lcc464"|sudo -S pkill feh && padding
#	done
	fehy -D $interval $files 
	clear
}
###   BEGIN

mpg123 -q bg.mp3 &
# OPEN
asciiopen
sleep 2s
clear && sh padding.sh
sh padding.sh && host
htype "我们是 SYSU_WxW ... "
hef 2.5 img/sysu_wxw.jpg 
echo "lcc464"|sudo -S pkill feh && clear

# MEMBER INTRO
padding
htype "我们拥有优秀的队员!"
#hef 2 img/4in1.png 
team
echo "lcc464"|sudo -S pkill feh && clear

## Chen Xuejia
padding
htype "陈学家 , 一个卓越的准Web前端工程师."
sleep ${c}s
hef 1.3 img/cxj.jpg
echo "lcc464"|sudo -S pkill feh && clear

## Xiao Quankai
padding
htype "萧全开 , 对他身边的服务器了如指掌!"
sleep ${c}s
hef 1.3 img/xqk.png
echo "lcc464"|sudo -S pkill feh && clear

## Wang Rui
padding
htype "王瑞 , 创意无限的活力少年!!"
sleep ${c}s
hef 1.3 img/wr.png
echo "lcc464"|sudo -S pkill feh && clear

## Wu Wenjie
padding
htype "吴文杰 , 低调的队长."
hef 1.3 img/wwj.png
echo "lcc464"|sudo -S pkill feh && clear


# Themes BEGIN
## Quest
padding
htype fast "在一个炎热的夏天，我们彼此相遇，创意的闪光，思维的火花，相互的知识碰撞，酝酿出了丰硕的果实 ———— " # Explain what we together are doing.
host && htype "企业-大学人才库"
hef 2 img/indexpage.jpg 

echo "lcc464"|sudo -S pkill feh && clear
#hef 1.5 img/quest1.jpg img/quest2.jpg img/quest3.jpg 

#echo "lcc464"|sudo -S pkill feh && clear

## Challenge
padding
htype "携手的奋斗中，我们不免遇到许多的困难。。。" # Explain the problems animation

hef 0.5 img/quest/*

echo "lcc464"|sudo -S pkill feh && clear
padding
htype "我们甚至有时会因此抓狂。。。" # We are scratched!
hef 2 img/scratch.png

echo "lcc464"|sudo -S pkill feh && clear

## Working Hard to solve problems
padding 
htype fast "但这不是阻挡我们的理由，我们团结奋斗，让一切的困难都成为前进的垫脚石！"
sleep 0.5s
hef 2 img/work.png

echo "lcc464"|sudo -S pkill feh && clear

## Solved!!
hef 0.8 img/solve/*
hef 1.2 img/solve.jpg
echo "lcc464"|sudo -S pkill feh && clear

padding
htype fast "我们就这样逐渐地做出了成品，不负所望地步入了决赛的礼堂！"

## Thanks teacher.

host && htype fast "最后要感谢我们的王变琴老师的指导支持！"
hef 1.5 img/teacher.png 
echo "lcc464"|sudo -S pkill feh && clear

# ENDING
padding
asciiend

### END
###########################################################
