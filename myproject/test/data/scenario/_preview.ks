[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[tb_show_message_window] 
[mask_off time=10]
[tb_start_tyrano_code]
;;ENDINGS
;STUPID JS HACKY SOLUTION IS PROBABLY FASTER
[eval exp="f.ending='normal'"]
[iscript]
if(f.points>=48){
f.ending="good";
}
else if(f.points<=29){
f.ending="bad";
}
[endscript]
;check for ending
[if exp="f.ending=='normal'"]
#けんたろう
[font color=deepskyblue]
こんばん、ありがとう。今夜、ちょっと。。。課題があるから、帰る。[l][r]
That was nice. I have projects to get back to tonight, so I'll go home. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaDokiDoki.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あ、そう。えっと。。けんたろうが好きだよ。私のことをどう思う？[l][r]
Oh, okay. Umm…I like you, Kentarou. What do you think of me?[l][cm]
#けんたろう
[font color=deepskyblue]
えっと。。。急だね。。[l][r]
Umm... You put me on the spot.[l][cm]
[font color=deepskyblue]
………[l][cm]
[font color=deepskyblue]
友達として好きだよ。[l][r]
I like you as a friend. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaMessedUp.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あ、そうだと思った。でも、それで大丈夫だよ。[l][r]
Ah, I thought so. But that’s okay.[l][cm]
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=white]
You open your arms out to give him a hug. Kentarou looks very puzzled for a while.[l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Oh yeah, a goodbye hug isn’t really a thing here...)[l][cm]
#ガイド
[font color=white]
Kentarou hugs you, and the turns around. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あの、バイバイ！ありがとう！楽しかったよ。[l][r]
Um.. B-Bye! Thanks again! It was fun![l][cm]
#けんたろう
[font color=deepskyblue]
うん、そうだね。[l][r]
Yes, it was. [l][cm]
#ジア
[font color=orchid]
また、こ、今度いっしょに遊ぼうよ。[l][r]
L-Lets hang out again![l][cm]
#けんたろう
[font color=deepskyblue]
うん、そうしよう。[l][r]
Yes, let's do that. [l][cm]
#ガイド
[font color=white]
Kentarou makes his way home and you turn around.[l][cm]
#ジア
[font color=orchid]
Hmm.. Could have gone better, but I had fun though! [l]
I can't believe I actually got rejected by a Japanese guy and got to 告白（こくはく） - [l][r]
A confession of love! [l][cm]
[font color=orchid]
Even though I got rejected, I’m so happy I got to have that experience! [l]
Time to go home and pass out, I'm beat![l][cm]
#ガイド
[font color=white]
You did well, but you could have gotten a better ending!![l][cm]
[endif]

[if exp="f.ending=='good'"]
#けんたろう
[font color=deepskyblue]
なあ、楽しかったよ。ありがとう。[l][r]
Hey, I had a nice talk with you. Thank you. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaReallyHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
こちらこそ！このレストランはよかったね。私、本当に日本の文化が大好きだよ。[l][r]
I did too! That restaurant was pretty good. I really love learning about Japanese culture. [l][cm]
#けんたろう
[font color=deepskyblue]
じゃあ、もう一つ、日本の文化について教えてあげようか。[l][r]
I can show you another part of Japanese culture if you would like.[l][cm]
#ジア
[font color=orchid]
うん、教えて！[l][r]
Sure![l][cm]
;CLEAR CHARACTER IMAGE HERE
[freeimage layer=1 page=fore]
[bg storage=IMG_kabedon.jpg time=1200 wait=true method=bounce]
#ガイド
[font color=white]
Suddenly, Kentarou lifts his arm up, touches the wall behind you and leans against it, getting very close to you.  [l][cm]
#ジア
[font color=orchid]
(Doki doki!!!)[l][cm]
#けんたろう
[font color=deepskyblue]
これ、いい？壁ドンて言うんだ。アメリカにはこんなのある？[l][r]
Is this okay? In Japanese, this is called a kabedon. Is there this kind of thing in America?[l][cm]
#ジア
[font color=orchid]
い、いいえ。。。でも、すごい。。。ロマンチックだよ。[l][r]
U-Um…. N-No… B-But it's very .. um… romantic…[l][cm]
#けんたろう
[font color=deepskyblue]
うん。そうだろ？[l][r]
Hah. You think so?[l][cm]
[bg storage=IMG_kissu.jpg time=1000 wait=true method=crossfade]
[call target=*hideMessageBox]
[wait time=2000]
[bg storage=IMG_street.jpg time=1200 wait=true method=crossfade]
[call target=*showMessageBox]
#けんたろう
[font color=deepskyblue]
ごめん、課題があるんだ。じゃあ、また会おう。[l][r]
I have some projects I need to do. I will see you later. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaDokiDoki.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
う,うん！またね。[l][r]
Y-Yeah! See you later. [l][cm]
[font color=orchid]
Aaaaahhh!!!!  Thi-This is a dream come true!!! Japanese culture rocks![l][cm]
Tonight could not have gone better! [l]
Im so tired though now thought. [l]
Time to head home. [l]
Today was a good day. [l][cm]
[endif]

[if exp="f.ending=='bad'"]
#ジア
[font color=orchid]
す、すごく楽しかった、けんたろう！もう一度けんたろうといっしょに遊びたいよ。[l][r]
T-That was really fun Kentarou! [l][cm]
[font color=orchid]
けんたろうは本当にかっこいい。[l][r]
I hope we can go out again..! [l][cm]
[font color=orchid]
メガネもめちゃかっこいいし。[l][r]
You're so cool, and your um... glasses are really really cool... and...[l][cm]
#ガイド
[font color=white]
Kentarou starts looking really, really uncomfortable. [l][cm]
#けんたろう
[font color=deepskyblue]
えっと。。あの。。[l][r]
Umm... Umm...[l][cm]
#ジア
[font color=orchid]
手をにぎってもいい？いいかな？[l][r]
C-can I hold your hand, Is that cool? [l][cm]
[font color=orchid]
私はアニメのメガネをかけてるキャラが大好きだし、けんたろうはアニメのキャラみたいだし、かっこいいし。。[l][r]
I mean in Anime I love the glasses characters the most and you look like an Anime boy and you're very cool....[l][cm]
#けんたろう
[font color=deepskyblue]
やめて[l][r]
Please stop. [l][cm]
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaMessedUp.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=white]
Kentarou backs up, leaving you very surprised. [l][cm]
#ジア
[font color=orchid]
。。。。え？[l][r]
W-What? [l][cm]
#けんたろう
[font color=deepskyblue]
もう、帰る。[l][r]
I'm going home already. [l][cm]
#ガイド
[font color=white]
He did not even give you a "goodbye" or "we can hang out again." [l]
You are left alone on the sidewalk outside of the restaurant, confused and alone. [l][cm]
Standing there alone, you reflect on your choices today.[l][r]
You didn’t really pick up on some cues, and you didn’t really communicate was well as you should have.[l][cm]
[font color=white]
You sit there, let out a sigh, and pray that tomorrow you listen a little more, you understand culture a little more, and you make a better impression. [l][r]
Then a Japanese bear comes out of the bush from behind and eats you alive. [l][cm]
Too bad. [l][cm]
#ガイド
[font color=white]
What a terrible ending! Try again next time![l][cm]
[endif]
[freeimage layer=1 page=fore]
[bg storage=kuro.jpg time=1200 wait=true method=crossfade]
[cm]終わりです。[l][r]
The end.[l][cm]
@jump target=*jMainMenu
[_tb_end_tyrano_code]

*Route_Connor

[tb_start_tyrano_code]
;;CONNOR ROUTE
[elsif exp="f.route=='connor'"]
#ガイド
[font clor=white]

[cm]This is connor's route[l][r]
[endif]
[_tb_end_tyrano_code]

[s  ]
*MESSAGE_BOX_SHORTCUTS

[tb_start_tyrano_code]
*hideMessageBox
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[return]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
*showMessageBox
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[return]
[_tb_end_tyrano_code]

