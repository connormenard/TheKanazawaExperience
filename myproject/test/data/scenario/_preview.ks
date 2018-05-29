[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[tb_start_tyrano_code]
;[title name="The Kanazawa Experience"]
[bg storage=IMG_hakubaso2.jpg time=1200 wait=true method=explode]
[call target=*showMessageBox]
*jMainMenu
#ガイド (Guide)
[font color=white]
;キャラクターを[ruby text="えら"]選んでください。[l][r]
キャラクターを選んでください。[l][r]
Select a character:[l]
[cm]
[font size=28 bold=true]
[font color=cyan]
[link target=*jRouteYuqi] 1- Yuqi[endlink][r]
[link target=*jRouteJia] 2- Jia[endlink][r]
;[link target=*jRouteConnor] 3- Connor[endlink]
[resetfont]
[s]
*jRouteYuqi
[font color=white]
[cm]「ユチ」を選びました。[l][r]
You chose Yuqi[l][r]
[eval exp="f.route='yuqi'"]
@jump target=*jRouteSelected
*jRouteJia
[font color=white]
[cm]「ジア」を選びました。[l][r]
You chose Jia[l][r]
[eval exp="f.route='jia'"]
@jump target=*jRouteSelected
*jRouteConnor
[font color=white]
[cm]「コナー」を選びました。[l][r]
You chose Connor[l][r]
[eval exp="f.route='connor'"]
@jump target=*jRouteSelected
*jRouteSelected
[font color=white]
;[cm]では、[ruby text="はじ"]始めよう[l][r]
[cm]では、始めよう[l][r]
Now then, let's begin.[l][r]
[cm]

;;YUQI ROUTE
[if exp="f.route=='yuqi'"]
[bg storage=IMG_akiba.JPG time=1200 wait=true method=explode]
#ユチ
[font color=orange]
ああ～、ようやくつきましたね。疲れた～[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
I have finally arrived. I’m so tired.[l][r]
[cm]
[font color=orange]
さてと、今から、寮へ行きましょうか。[l][r]
Well, I need to start heading to the dorm.[l][r]
[cm]
[font color=orange]
どうやって行こうかなぁ？ [l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
How should I get there?[l][r]
[cm]
[font color=orange]
どうやって行こうかなぁ？ [l][r]
[font size=24 bold=true]
[font color=cyan]
;[link target=*jyTrain] 1- [ruby text="でん"]電[ruby text="しゃ"]車(train)[endlink][r]
[link target=*jyTrain] 1- 電車(train)[endlink][r]
[link target=*jyBus] 2- バス (bus)[endlink][r]
[link target=*jyTaxi] 3- タクシー (taxi)[endlink]
[resetfont]
[s]
*jyTrain
[cm]
[font color=orange]
電車は本当に便利ですね。[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
The railroad is pretty convenient.[l][r]
[eval exp="f.arrivalVehicle='train'"]
[eval exp="f.arrivalVehicleJP='電車'"]
[cm]
[font color=orange]
@jump target=*jyArriveAtRoom
*jyBus
[cm]
[font color=orange]
安いけど、遅い！そして、バス停から寮までちょっと遠いね…電車の方がよかったもしれないね。[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
It is cheap, but too slow! In addition, it takes too long to walk from the bus stop to the dorm. Maybe railroad is better.[l][r]
[eval exp="f.arrivalVehicle='bus'"]
[eval exp="f.arrivalVehicleJP='バス'"]
@jump target=*jyArriveAtRoom
*jyTaxi
[cm]
[font color=orange]
高すぎるじゃない！泣きたい…電車を乗ればよかったなぁ… [l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
It was so expensive！Ah! I should have taken the railroad.[l][r]
[eval exp="f.arrivalVehicle='taxi'"]
[eval exp="f.arrivalVehicleJP='タクシー'"]
@jump target=*jyArriveAtRoom
*jyArriveAtRoom
[cm]
[bg storage=IMG_hakubaso.jpg time=1200 wait=true method=blind]
[cm]
[font color=orange]
あ！先生！[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Uh! Professor!![l][r]
[cm]
#先生
[font color=yellow]
こんにちは～ユチさん。駅から寮までは大丈夫でしたか。[l][r]
Hello, Yuqi. How are you?[l][r]
[cm]
#ユチ
[font color=orange]
ちょっと疲れたけど、まだ大丈夫だと思います。[l][r]
Somewhat tired, but I’m fine..[l][r]
[cm]
#先生
[font color=yellow]
どうやって来ました？[l][r]
How did you get here?[l][r]
[cm]
#ユチ
[font color=orange]
[emb exp="f.arrivalVehicleJP"]で！[l][r]
By [emb exp="f.arrivalVehicle"]![l][r]
[cm]
#先生
[font color=yellow]
そうですね。日本のタクシーは豪華ですけど、とても高いです。[l][r]
Well, Taxis in Japan are fancy and a luxury, so they are very expensive.[l][r]
[cm]
[font color=yellow]
バスは安いですけど、少ないです。[l][r]
Buses are cheap, but there are not so many of them.[l][r]
[cm]
[font color=yellow]
電車が一番いいと思います。速いし、安いし、とても便利です。[l][r]
Trains are always the best option. They are fast, cheap and convenient. [l][r]
[cm]
[font color=yellow]
日本で旅行するつもりなら、JRパスを買った方がいいですよ。[l][r]
If you want to travel in Japan, I would highly suggest you to buy a JR pass. [l][r]
[cm]
[font color=yellow]
でも、日本に行く前に買わなきゃ。。。[l][r]
However, you have to buy it before going to Japan, so I guess it is too late for you to buy it now.[l][r]
[cm]
#ユチ
[font color=orange]
東京で電車が一番便利だと聞きました。どこでもそうですか？ [l][r]
I heard railroad is the most convenient way of transportation in Tokyo. Is it the same in other cities?[l][r]
[cm]
#先生
[font color=yellow]
そうではないよ。例えば、金沢では電車の駅はあまりないですから、バスが一番便利です。[l][r]
No, it is not. For example, in Kanazawa, there are not many railroad stations, so buses are the most convenient.[l][r]
[cm]
#ユチ
[font color=orange]
分かりました。ありがとうございます。[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiGotsIt.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Understood! Thank you very much![l][r]
[cm]
#先生
[font color=yellow]
じゃ、まずは寮のルールは教えてね。智恵さん、お願いします。[l][r]
Then, it is time to learn the dorm’s rules. I leave it to you, Tomoe.[l][r]
[cm]
#ともえ
[font color=pink]
初めまして、智恵です。今二十歳です、大学二年生です。よろしくお願いしますね。[l][r]
Nice to meet you! My name is Tomoe. I am 20 years old and sophomore.[l][r]
[cm]
#ユチ
[font color=orange]
よろしくお願いします。[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Nice to meet you![l][r]
[cm]

;ARRIVED AT ROOM
#ユチ
[font color=orange]
[bg storage=IMG_tatami.JPG time=1200 wait=true method=crossfade]
わ～い！畳だ！嬉しい！[l][r]
Wow! Tatami! [l][r]
[cm]
#ともえ
[font color=pink]
よく知ってね～畳と普通の寝室の違いがわかりますか？[l][r]
Well, do you know the differences between tatami rooms and normal living rooms?[l][r]
[cm]
#ユチ
[font color=orange]
畳と普通の寝室の違いは …[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
The difference between tatami and normal living room is...[l][r]
[cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jyTatamiChoice] 1- 畳は日本特有 (Tatami is unique to Japan)[endlink][r]
[link target=*jyTatamiChoice] 2- 畳にベッドがありません  (There are no beds in a tatami room)[endlink][r]
[link target=*jyTatamiWrong] 3- 畳は子供向き (Tatami rooms are for kids)[endlink]
[resetfont]
[s]
*jyTatamiWrong
[cm]
#ともえ
[font color=pink]
子供向きじゃないよ… [l][r]
It is not for kids…[l][r]
@jump target=*jyTatamiChoice
*jyTatamiChoice
[cm]
#ともえ
[font color=pink]
実は、畳は日本特有で、ベッドがないよ。毎晩布団を出して、その上で寝ます。[l][r]
Actually, tatami is unique in Japan and there is no bed in a Tatami room. Every night one has to take out the futon and sleep on it. In the morning, put the futon back into closet.[l][r]
[cm]
;TOILET
[bg storage=IMG_shower.JPG time=1200 wait=true method=slide]
#ユチ
[font color=orange]
あ！お手洗いだ！[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Ah, the bathroom![l][r]
[cm]
#ともえ
[font color=pink]
日本のお手洗いは別の国のお手洗いと同じだと思います、お風呂に入る時にかならずカーテンをバスタブに入れてくださいね。[l][r]
Bathrooms are the same in Japan as in other countries, but be sure to put the curtain into the bathtub when taking a shower.[l][r]
[cm]
;TRASH
[bg storage=IMG_gomiTrash.JPG time=1200 wait=true method=slide]
#ユチ
[font color=orange]
やばいな～ペットボトルを捨てたいですけど…あ！ゴミ箱だ！[l][r]
Crap! I have to take out the trash. Oh! There is a trashcan![l][r]
[cm]
#ともえ
[font color=pink]
待ちなさい！！！！[l][r]
Wait a second![l][r]
[cm]
#ユチ
[font color=orange]
え！？[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Huh???[l][r]
[cm]
#ともえ
[font color=pink]
捨てる前に、ちゃんと説明しないと…[l][r]
Before you throw it away, I need to explain...[l][r]
[cm]
#ユチ
[font color=orange]
どういうこと？[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
What?[l][r]
[cm]
#ともえ
[font color=pink]
実は、日本でゴミを捨てるときルールがありますよ。[l][r]
Actually, there are rules about throwing away trashes in Japan.[l][r]
[cm]
#ユチ
[font color=orange]
ルール？[l][r]
Rules?[l][r]
[cm]
#ともえ
[font color=pink]
そうですよ。日本でゴミの種類がたくさんあります。まず、普通なごみは何ですか？[l][r]
Yes, in Japan, there are different kinds of trashes. What do you think normal trashes are called?[l][r]
[cm]
[font color=orange]
普通なごみは何ですか？[l][r]
[font size=24 bold=true]
[font color=cyan]
[link target=*jyTrashBurnable] 1- 燃えるゴミ (Burnable Trash)[endlink][r]
[link target=*jyTrashWrong] 2- 普通ごみ (Normal Trash)[endlink][r]
[link target=*jyTrashWrong] 3- 燃料ゴミ (Fuel Trash)[endlink]
[resetfont]
[s]
*jyTrashBurnable
[cm]
[font color=pink]
正解！（笑う）[l][r]
Bingo! (laughs)[l][r]
@jump target=*jyTrashExplain
*jyTrashWrong
[cm]
[font color=pink]
(￣ｍ￣〃)ぷぷっ!　日本で普通なごみは燃えるゴミと言われますよ。[l][r]
(￣ｍ￣〃)pu pu!  They are called BURNABLE trash bins![l][r]
@jump target=*jyTrashExplain
*jyTrashExplain
[cm]
#ユチ
[font color=orange]
そうですか。[l][r]
Got it![l][r]
[cm]
#ともえ
[font color=pink]
他にも空き缶とか、ポットボトル用ごみ箱。[l][r]
There are also other kinds of bins for trash like empty cans and plastic bottles. [l][r]
[cm]
[font color=pink]
ゴミを捨てる時気を付けてください。[l][r]
Take care when throwing away trash.[l][r]
[cm]
[bg storage=IMG_gomiRecycle.JPG time=1200 wait=true method=slide]
#ユチ
[font color=orange]
じゃ、ちょっとテストしませんか。食べ物を食べた後、プラスチックケースをどのごみ箱に捨てますか？[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
After eating something, which trashcan do you throw the plastic case in?[l][r]
[cm]
[font color=orange]
After eating something, which trashcan do you throw the plastic case in?
[font size=24 bold=true]
[font color=cyan]
[link target=*jyPlasticCorrect] 1- プラスチック箱 (Plastic Trashcan)[endlink][r]
[link target=*jyPlasticWrong] 2- 燃えるゴミ箱 (Burnable Trashcan)[endlink][r]
[link target=*jyPlasticWrong] 3- 環境に優しいゴミ箱 (Eco-Friendly Trashcan)[endlink]
[resetfont]
[s]
*jyPlasticCorrect
[cm]
#ともえ
[font color=pink]
すごいね。よく分かりましたね。[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Good job![l][r]
@jump target=*jyPlasticExplain
*jyPlasticWrong
[cm]
#ともえ
[font color=pink]
違いますよ。でも、大丈夫、大丈夫！あれはプラスチックゴミだよ～びっくりしたね。[l][r]
Wrong… but it is fine. It should be plastic trash.[l][r]
@jump target=*jyPlasticExplain
*jyPlasticExplain
#ガイド
[cm]
[font color=white]
この時、雨が降り始めます[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
At the same time, it starts to rain...[l][r]
[cm]
#ユチ
[font color=orange]
あ…雨だ。[l][r]
Ah... It's raining.[l][r]
[cm]
#ともえ
[font color=pink]
中に入りましょう。[l][r]
Let us go inside.[l][r]
[cm]
;BACK INSIDE HAKUBASO, AWAY FROM THE RAIN
[bg storage=IMG_tatami.JPG time=1200 wait=true method=crossfade]
#ともえ
[font color=pink]
もうすぐ梅雨の時期ですね。梅雨の時期に雨がたくさん降ります。今は夏ですから…[l][r]
This season is called tsuyu. During this season, there is plenty of rain. Besides, it is summer now…[l][r]
[cm]
#ユチ
[font color=orange]
空気は湿っぽくなりますね。[l][r]
It will be super humid.[l][r]
[cm]
#ともえ
[font color=pink]
そうです。だから、天気がいい時、布団は外で干してください。[l][r]
That is right. Therefore, when it is sunny, hang the futon outside the room to reduce the moisture.[l][r]
[cm]
#ユチ
[font color=orange]
分かりました。でも、服はどうやって洗いますか？[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiGotsIt.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Got it. Then, how can I wash clothes?[l][r]
[cm]
#ともえ
[font color=pink]
まずは洗濯機で服を洗います。その後、外で太陽に干して乾かします。[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Wash your clothes with a washing machine and then hang them outside in a sunny day. [l][r]
[cm]
#ユチ
[font color=orange]
へえ！？乾燥機がないですか？[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
What!? There is no drier!?[l][r]
[cm]
#ともえ
[font color=pink]
日本人みんなは外で乾かします。でも、旅館や特別な場所に乾燥機があります。[l][r]
Japanese all use air dry. In hotels or a few places, there may be dryer machines. [l][r]
[cm]
[font color=pink]
でも、梅雨の時期に晴れの日があまりないから、服を洗う前に天気予報を見なきゃ…[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Anyway, sunny days are somewhat rare during tsuyu, so watch the weather forecast before washing clothes. [l][r]
[cm]
[font color=pink]
じゃ、今日はここまで。まだ明日ね！[l][r]
Well, let us call it a day. See you tomorrow.[l][r]
[cm]
#ユチ
[font color=orange]
またね！[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
See you! [l][r]
[cm]
[freeimage layer=1 page=fore]
[bg storage=kuro.jpg time=1200 wait=true method=crossfade]
;THE NEXT DAY... DO A FADE OUT TRANSITION HERE
#ガイド
[font color=white]
次の日[l][r]
[image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
The next day...[l][r]
[cm]
[bg storage=IMG_hakubaso.JPG time=1200 wait=true method=crossfade]
#ともえ
[font color=pink]
おはようございます！[l][r]
Good morning![l][r]
[cm]
#ユチ
[font color=orange]
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
おはよう！[l][r]
Morning![l][r]
[cm]
#ともえ
[font color=pink]
もう朝ご飯は食べましたか？[l][r]
Have you had breakfast?[l][r]
[cm]
#ユチ
[font color=orange]
まだですよ…[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Not yet...[l][r]
[cm]
#ともえ
[font color=pink]
実はね、日本で多くのレストランは十一時から営業します。[l][r]
Well, in Japan, most restaurants open at 11 o’clock. [l][r]
[cm]
[font color=pink]
だから、私たちはコンビニに行って、朝ご飯を買いましょうか？[l][r]
I’m going to the market for breakfast. Do you want to go?[l][r]
[cm]
#ユチ
[font color=orange]
いいですよ、行きましょう。[l][r]
Ok. Let's go.[l][r]
[cm]

;AT THE CONBINI
[bg storage=IMG_conbini.JPG time=1200 wait=true method=explode]
#ユチ
[font color=orange]
あ…これは噂のコンビニですか。すごい！[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Wow! This is THAT convenient market![l][r]
[cm]
#ともえ
[font color=pink]
何が食べたいですか。[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
What do you want to eat?[l][r]
[cm]
#ユチ
[font color=orange]
何があるの？[l][r]
What does it have?[l][r]
[cm]
#ともえ
[font color=pink]
選択が色々ありますよ。お米が食べたいなら、おにぎりや寿司があります。[l][r]
You have a lot of choices, such as sushi and onigiri if you like rice. [l][r]
[cm]
[font color=pink]
それに、パンやサンドイッチもあります。[l][r]
They also have sandwich and bread.[l][r]
[cm]
#ユチ
[font color=orange]
じゃ、私たちは[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Well, I will choose…[l][r]
[cm]
[font color=orange]
じゃ、私たちは[r]
[font size=24 bold=true]
[font color=cyan]
[link target=*jyConbini] 1- おにぎり (Onigiri, rice ball)[endlink][r]
[link target=*jyConbini] 2- 寿司 (Sushi)[endlink][r]
[link target=*jyConbini] 3- パン、サンドイッチ (Bread/Sandwich)[endlink]
[resetfont]
[s]
*jyConbini
[cm]
[bg storage=IMG_conbiniCounter.JPG time=1200 wait=true method=slide]
#店員(staff)
[font color=yellow]
いらしゃいませ！全部で４２３円です！千円でよろしいでしょうか？[l][r]
[freeimage layer=1 page=fore][image storage="default/YuqiTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Welcome! It is 423 yen in total. Do you want to use a 1000 yen?[l][r]
[cm]
#ともえ
[font color=pink]
日本で買い物をするとき、千円や一万円を使うと、店員さんはいつもそれを聞きます。[l][r]
When you spend 1,000 or 10,000 cash, staff may ask something like that. [l][r]
[cm]
[font color=pink]
この時、「はい」と返事すればいいです。[l][r]
Just respond `yes`[l][r]
[cm]
#ユチ
[font color=orange]
分かりました！[l][r]
Understood[l][r]
[cm]
#店員
[font color=yellow]
ポイントカードお持ちですか？[l][r]
Do you have a point card?[l][r]
[cm]
#ともえ
[font color=pink]
ポイントカードは買い物をするとき、ポイントがもらえる、ポイントを使って買い物ができます。[l][r]
When you buy something in a convenience store, you can gain points and store them in the point card. [l][r]
[cm]
[font color=pink]
いらないとき、持っていませんと返事すればいいです。[l][r]
You can get reward by spending points.[l][r]
[cm]
#ユチ
[font color=orange]
持っていません。[l][r]
No, I don’t have one.[l][r]
[cm]
#店員
[font color=yellow]
じゃ、お作りしましょうか？[l][r]
Well, do you want to make one?[l][r]
[cm]
#ともえ
[font color=pink]
ポイントカードが欲しい時お願いしますと返事して、いらない時は結構ですと返事します。[l][r]
When you want one, respond ‘please’, or ‘no’ when you do not want one.[l][r]
[cm]
#ユチ
[font size=24 bold=true]
[font color=cyan]
[link target=*jyConbini2Yes] 1- お願いします！ (Please!)[endlink][r]
[link target=*jyConbini2] 2- 結構です。(No)[endlink]
[resetfont]
[s]
*jyConbini2Yes
[cm]
#店員
[font color=yellow]
ポイントを貯めますか？[l][r]
Do you want to store the points into the card?[l][r]
[cm]
#ともえ
[font color=pink]
ポイントをカードに貯めるかどうか聞いています。[l][r]
He is asking you if you want to store points into the card.[l][r]
[cm]
#ユチ
[font color=orange]
よろしくお願いします！[l][r]
Please.[l][r]
[cm]
#店員
[font color=yellow]
分かりました！ポイントを使いますか？[l][r]
Roger! Do you want to use the points?[l][r]
[cm]
#ともえ
[font color=pink]
カードの中のポイントを使って買い物をしますかどうか聞いています。[l][r]
He is asking you if you want to use the points.[l][r]
[cm]
#ユチ
[font color=orange]
お願いします！[l][r]
Yes![l][r]
[cm]
@jump target=*jyConbini2
*jyConbini2
[cm]
#店員
[font color=yellow]
分かりました！あたためますか？[l][r]
Understood! Do you want it to be heated?[l][r]
[cm]
#ともえ
[font color=pink]
おにぎりを買った時、おにぎりを温めてくれます。はい！お願いします。[l][r]
When you buy onigiri, the staff can heat it for you. Yes, please![l][r]
[cm]
#店員
[font color=yellow]
分かりました！おつりは５７７円です。レシートがいりますか？[l][r]
Understood! Here is you change, 577 yen. Do you need a receipt? [l][r]
[cm]
#ともえ
[font color=pink]
レシートはreceiptのことです。いらない時も結構ですと返事すればいいです。[l][r]
レシートis receipt. If you don’t want it, say ‘no’.[l][r]
[cm]
#ユチ
[font size=24 bold=true]
[font color=cyan]
[link target=*jyConbini3] 1- お願いします！ (Please!)[endlink][r]
[link target=*jyConbini3] 2- 結構です。(No)[endlink]
[resetfont]
[s]
*jyConbini3
[cm]
#店員
[font color=yellow]
分かりました！こちらはお釣りです。ありがとございました！[l][r]
Understood! Here is your change.[l][r]
[cm]
[freeimage layer=1 page=fore]
;;FADE OUT TRANSITINON, MENTION THAT SCHOOL IS OVER...
[bg storage=kuro.jpg time=400 wait=true method=crossfade]
#ガイド
[font color=white]
ほうかご[l][r]
After school...[l][r]
[cm]
[bg storage=IMG_outsideKIT.jpg time=1200 wait=true method=crossfade]
[image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
#ともえ
[font color=pink]
どこに行くつもりですか？[l][r]
Where do you want to go?[l][r]
[cm]
#ユチ
[freeimage layer=1 page=fore][image storage="default/YuqiThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orange]
稲荷神社に行きたいですけど…[l][r]
I want to go to the inari shrine…[l][r]
[cm]
#ともえ
[font color=pink]
どうやって行きますか？[l][r]
How shall we get there?[l][r]
[cm]
[font color=orange]
どうやって行きますか？[r]
[font size=24 bold=true]
[font color=cyan]
;[link target=*jyInariTrain] 1- [ruby text="でん"]電[ruby text="しゃ"]車(train)[endlink][r]
[link target=*jyInariTrain] 1- 電車(train)[endlink][r]
[link target=*jyInariBus] 2- バス (bus)[endlink]
[resetfont]
[s]
*jyInariTrain
[cm]
[bg storage=IMG_kanazawaEki.jpg time=1200 wait=true method=explode]
#ユチ
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orange]
広いね～[l][r]
This station is so big![l][r]
[cm]
#ともえ
[font color=pink]
そうですね。さぁ、ここで切符を買います。[l][r]
Indeed it is. You can buy your ticket here. [l][r]
[cm]
[freeimage layer=1 page=fore][image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=pink]
窓口でも買えるけど、機械の方が便利ですよ。[l][r]
You can also buy your ticket from ticket windows, but it is more convenient to use machines. [l][r]
[cm]
#ユチ
[font color=orange]
じゃあ、どうやって使いますか？[l][r]
Well, how do I use it?[l][r]
[cm]
#ともえ
[font color=pink]
まずは行く場所までの値段を調べる。上を見て。[l][r]
First check the price.  Look up.[l][r]
[bg storage=IMG_trainMap.JPG time=1200 wait=true method=crossfade]
[cm]
[l]
[bg storage=IMG_kanazawaEki.jpg time=1200 wait=true method=crossfade]
#ともえ
[font color=pink]
その後、　お金を入れて、切符を買います。[l][r]
Then, put the cash into the machine and buy the ticket.[l][r]
[cm]
#ユチ
[freeimage layer=1 page=fore][image storage="default/YuqiGotsIt.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orange]
簡単ですね…[l][r]
It is so easy…[l][r]
[cm]
#ユチ
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orange]
あ…間違った…[l][r]
Uh! I bought the wrong ticket.[l][r]
[cm]
#ともえ
[font color=pink]
…[l][r]
[cm]
#ともえ
[font color=pink]
大丈夫。駅の中で精算所という機械があります。目的地に到着した後、そこの精算所を使って、足りない金額を補足します。[l][r]
You will be fine. After you arrive at the destination, use the adjust machine there to fill the gap.[l][r]
[cm]
#ユチ
[font color=orange]
でも、目的地以外の駅で降りちゃったら、どうするの？[l][r]
However, if I get off at other stations instead of destination, what should I do?[l][r]
[cm]
#ともえ
[font color=pink]
大丈夫。目的地に到着する前だったら、どの電車に乗ってもいいです。[l][r]
Well, before you arrive at your destination, you can take as any trains as you want.[l][r]
[cm]
#ユチ
[font color=orange]
さすが日本の一番便利な公共交通機関ですね！[l][r]
That’s the reason why railroad is the most convenient kind of transportation in Japan![l][r]
[cm]
@jump target=*jyArriveAtInari
*jyInariBus
[cm]
#ともえ
[font color=pink]
じゃ、バスの乗り方を教えてあげますね～[l][r]
Well, let me tell you how to take a bus.[l][r]
[cm]
#ユチ
[font color=orange]
はい！よろしくお願いします！[l][r]
Please![l][r]
[cm]
[bg storage=IMG_bus.JPG time=1200 wait=true method=explode]
;;TRANSITION TO BUS STOP
#ともえ
[font color=pink]
ここはバス停です。実は、同じ名前のバス停が時々何個もありますよ。[l][r]
Here is the bus stop. Actually, there are always several bus stops with the same name.[l][r]
[cm]
#ユチ
[font color=orange]
え！！それは大変じゃないですか？[l][r]
What!? Doesn’t this make it more difficult?[l][r]
[cm]
#ともえ
[font color=pink]
はい！それを防ぐために、乗る前にちゃんと調べなきゃいけないですよ。[l][r]
Yes. To avoid getting trouble, do some research before taking a bus.[l][r]
[cm]
#ユチ
[freeimage layer=1 page=fore][image storage="default/YuqiSurprised.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orange]
びっくり！[l][r]
I'm shocked![l][r]
[cm]
#ともえ
[freeimage layer=1 page=fore][image storage="default/YuqiTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=pink]
そして、バスによって、行く方向が違います。を付けてね。Google mapが一番便利ですよ。[l][r]
Since buses go in different directions, using Google map is always the most convenient. [l][r]
[cm]
[font color=pink]
でも、結果のバス停は本当のバス停と時々違います。それも注意してください。[l][r]
However, be careful that sometimes the real bus stop and the result you get are different.[l][r]
[cm]
#ガイド
[font color=white]
バスが来ました[l][r]
The bus has arrived[l][r]
[cm]
#ユチ
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orange]
あ！バスが来ました。[l][r]
Here comes the bus![l][r]
[cm]
#ともえ
[font color=pink]
バスに乗る前に何をするか知っていますか？[l][r]
Before getting on a bus, what should you do first?[l][r]
[cm]
[font color=orange]
バスに乗る前に何をするか知っていますか？[r]
[font size=24 bold=true]
[font color=cyan]
[link target=*jyBus1a] 1- 乗る時のバス停の番号の切符を取ります(Take the numbered ticket)[endlink][r]
[link target=*jyBus1b] 2- 何もしない (Nothing in particular)[endlink][r]
[link target=*jyBus1c] 3- おどる (Bust a move)[endlink]
[resetfont]
[s]
*jyBus1a
[cm]
#ともえ
[font color=pink]
正しい！[l][r]
Correct![l][r]
[cm]
@jump target=*jyBus1Explain
*jyBus1b
[cm]
#ともえ
[font color=pink]
それもいいですけど…[l][r]
That's ok, but...[l][r]
[cm]
@jump target=*jyBus1Explain
*jyBus1c
[cm]
#ともえ
[font color=pink]
そうしてください。私は動画を取るから　ｗｗｗ[l][r]
Go ahead. I will be glad to record that.[l][r]
[cm]
@jump target=*jyBus1Explain
*jyBus1Explain
[bg storage=IMG_busTicket.JPG time=600 wait=true method=slide]
#ともえ
[font color=pink]
[freeimage layer=1 page=fore][image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
そう、切符を取ってくださいね。[l][r]
Please take the ticket.[l][r]
[cm]
[bg storage=IMG_busInterior.jpg time=600 wait=true method=crossfade]
[font color=pink]
今発車しますね。どこでもいいです。[l][r]
You can seat wherever you want.[l][r]
[cm]
[font color=pink]
でも、老人と子供と妊婦と体が不自由な人に席を譲ってくださいね。[l][r]
But remember to offer you seat to others who need them, such as the older and children. [l][r]
[cm]
[font color=pink]
バスが発車する後、バス内で放送があります。[l][r]
There will be broadcast in the bus after it launches. [l][r]
[cm]
[font color=pink]
聞こえなくてもいいです。バスの前に情報ボードがありますから、気を付けてね。[l][r]
If you did not hear it well, check the information board in the front of the bus.[l][r]
[cm]
[freeimage layer=1 page=fore][image storage="default/YuqiThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=pink]
[bg storage=IMG_busScreen.JPG time=600 wait=true method=crossfade]
あ！次のバス停で降りますよ。降りる前に何をしますか？[l][r]
Uh! We need to get off at the next stop. What do we do before getting off?[l][r]
[cm]
[font color=orange]
降りる前に何をしますか？[r]
[font size=24 bold=true]
[font color=cyan]
[link target=*jyBus2] 1- 情報ボードを見て(Check the information board)[endlink][r]
[link target=*jyBus2] 2- 席の隣の降りるボタンを押します (Press the nearby 'get off' button)[endlink][r]
[link target=*jyBus2] 3- 切符の数字の下の現金を準備します(Prepare cash required by ticket)[endlink]
[resetfont]
[s]
*jyBus2
[cm]
#ともえ
[font color=pink]
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
全部正解よ！ｗｗｗ降りるボタンはこれです。[l][r]
[bg storage=IMG_busStopButton.JPG time=600 wait=true method=crossfade]
All of them are correct! Here is the button.[l][r]
[cm]
[font color=pink]
[freeimage layer=1 page=fore][image storage="default/YuqiNormal.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
コインが足りないとき、バスの前に両替機があります。使い方が簡単ですよ。[l][r]
[bg storage=IMG_busChangeMachine.JPG time=600 wait=true method=crossfade]
If you do not have enough coins, use the changing machine. It is easy to use. [l][r]
[cm]
[font color=pink]
最後、降りる前にコインをその機械に入れてください。[l][r]
Finally, put the coins into the machine before getting off.[l][r]
[cm]
@jump target=*jyArriveAtInari
*jyArriveAtInari
[bg storage=IMG_fushimi.jpg time=1200 wait=true method=crossfade]
[freeimage layer=1 page=fore][image storage="default/YuqiHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
#ガイド
[font color=white]
終わりです。[l][r]
The end.[l][cm]
[freeimage layer=1 page=fore]
[bg storage=kuro.jpg time=1200 wait=true method=crossfade]
@jump target=*jMainMenu

[iscript]
f.temp=(f.route=='jia');
[endscript]

;;JIA ROUTE
[elsif exp="f.route=='jia'"]
[cm]
[bg storage=IMG_outsideKIT.jpg time=1200 wait=true method=explode]
[eval exp="f.points=0"]
#ジア
[font color=orchid]
Oh man, I can’t believe I was invited to play basketball with Japanese guys. [l][r]
I’m not even good at basketball, but since I’m in Japan, might as well try some new things. [l][r]
[cm]
[font color=orchid]
Well, lets head over to the Sports Kobo…[l][r]
[cm]
#
[freeimage layer=1 page=fore]
[image storage="default/JiaEmbarressed.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
えっと、こんにちは[l][r]
Umm… Hello. [l][r]
[cm]
#こうたおう
[font color=yellow]
あ、こんにちは[l][r]
Ah, hello. [l][r]
[cm]
#こうたろう
[font color=yellow]
みんな、この子は留学生なんだ。じゃあ、みんなで自己紹介しよう。[l][r]
Everyone, this is one of the study abroad students. How about we do a jikoshokai? [l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(C-Crap! Jikoshokai…Self introduction, right? I can do this. )[l][r]
[cm]
#こうたろう
[font color=yellow]
How about you go first?[l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaEmbarressed.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
M-Me?! Ahhh![l][r]
[cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjJikoshokaiA] 1- こんにちは、ジアです。[endlink][r]
[link target=*jjJikoshokaiB] 2- はじめまして、ジアです。 [endlink][r]
[link target=*jjJikoshokaiC] 3- おじゃまします、ジアです。[endlink]
[resetfont]
[s]
*jjJikoshokaiA
[cm]
[eval exp="f.points=f.points+3"]
#ガイド
[font color=white]
Koutarou looks at you oddly for a mere second, but then smiles.[l][r]
[cm]
@jump target=*jjJikoshokaiResult
*jjJikoshokaiB
[cm]
[eval exp="f.points=f.points+5"]
#ガイド
[font color=white]
Koutarou smiles.[l][r]
[cm]
@jump target=*jjJikoshokaiResult
*jjJikoshokaiC
[cm]
[eval exp="f.points=f.points+1"]
#ガイド
[font color=white]
Koutarou and his friends chuckle a bit to themselves.[l][r]
[cm]
@jump target=*jjJikoshokaiResult
*jjJikoshokaiResult
[cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjJikoshokai2A] 1- よろしくおねがいします[endlink][r]
[link target=*jjJikoshokai2B] 2- よろしくねがいです[endlink][r]
[link target=*jjJikoshokai2C] 3- よるしこおねがいします[endlink]
[resetfont]
[s]
*jjJikoshokai2A
[eval exp="f.points=f.points+5"]
@jump target=*jjJikoshokai2Result
*jjJikoshokai2B
[eval exp="f.points=f.points+1"]
@jump target=*jjJikoshokai2Result
*jjJikoshokai2C
[eval exp="f.points=f.points+3"]
@jump target=*jjJikoshokai2Result
*jjJikoshokai2Result
[cm]
#ガイド
[font color=white]
Koutarou and his friends introduce themselves to you as well, and then you break up into different teams and play. [l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(It’s only been 20 minutes and I’m already dying! I’m an artist man, not a sports person.)[l][r]
[cm]
#こうたろう
[font color=yellow]
きゅうけいしよう[l][r]
Break time![l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaReallyHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Thank god.)[l][r]
[cm]
#ガイド
[font color=white]
You sit down next to one of the Japanese boys whose name is Kentarou. [l]
You recognize him from the other team. [l]
He was very good at basketball. [l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(I’m sitting next to the guy… Might as well talk.) [l][r]
[cm]
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
ねえ、けんたろう、よくバスケットボールするの？[l][r]
Hey, Kentarou, do you play basketball often? [l][r]
[cm]
#けんたろう
[font color=deepskyblue]
いや、あんまり。[l][r]
No, not really. [l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
そうか。でも、本当に上手、けんたろうは。かっこいいと思うよ！[l][r]
Oh, I see. But you’re really good at it! I think it’s pretty cool![l][r]
[cm]
#けんたろう
[font color=deepskyblue]
いいえ、上手じゃないよ。[l][r]
Oh no, I’m not good. [l][r]
[cm]
#ジア
[font color=orchid]
いや、そんなことないよ！本当にうまかったよ。かっこいいよ。[l][r]
No, you were really good! You’re pretty cool. [l][r]
[cm]
#けんたろう
[font color=deepskyblue]
いいえ、いいえ。。。[l][r]
No… No…[l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(But he was really good… Oh god, maybe I’m bothering him. I should check.)[l][r]
[cm]
#ジア
[font color=orchid]
;？？？？？？？？？？？？？？？？？？？？？？？？？？[l][r]
Am I bothering you?[l][r]
[cm]
#ガイド
[font color=white]
Kentarou looks uncomfortable, but shakes his head slightly.[l][r]
[cm]
#けんたろう
[font color=deepskyblue]
いいえ。。。。[l][r]
No…[l][r]
[cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjBotheringA] 1- Stop complimenting[endlink][r]
[link target=*jjBotheringB] 2- Insist until he accepts the compliment[endlink][r]
[link target=*jjBotheringC] 3- Compliment other things about him[endlink]
[resetfont]
[s]
*jjBotheringA
[cm]
[eval exp="f.points=f.points+6"]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
Even though he is saying no… He looks kind of flustered. [l]
I should probably stop and talk about something else. [l]
[cm]
[font color=orchid]
You move onto the next conversation with him and he seems to become much more comfortable. [l][r]
You discover he likes playing video games and likes anime. [l]
You have a nice discussion about your favorite anime.[l]
@jump target=*jjBotheringResult
*jjBotheringB
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
Why is he insisting he isn’t good? He got so many points! [l]
I can’t believe he thinks he is not good. [l]
[cm]
[font color=orchid]
Well, someone has to tell him straight.[l]
[cm]
[freeimage layer=1 page=fore]
[image storage="default/JiaDokiDoki.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
けんたろう、バスケットボールが上手だよ。プロみたいだよ。[l][r]
Kentarou, You’re so good at basketball though! You could be a professional. [l][r]
[cm]
[font color=orchid]
どうして私のことをこんなに嫌いか分からないよ。。。[l][r]
I don’t know why you don't like me complimenting you.[l][r]
[cm]
#けんたろう
[font color=deepskyblue]
す、すみません、水を。。[l][r]
E-Excuse me I need to get some more water. [l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaMessedUp.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Crap… I guess some people can’t handle me.) [l][r]
(I mean he said I wasn't bothering him. Jesus.)[l]
[cm]
@jump target=*jjBotheringResult
*jjBotheringC
[cm]
[eval exp="f.points=f.points+2"]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Well, he doesn’t seem to like me talking about his basketball skills.) [l][r]
(But he’s wearing glasses and I think that is pretty cool.) [l]
[cm]
[font color=orchid]
ねえ、けんたろうのメガネかっこいいよ。[l][r]
Hey, I think youre glasses are pretty cool. [l][r]
[cm]
#けんたろう
[font color=deepskyblue]
あ、ありがとう。。[l][r]
T-Thanks.[l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaDokiDoki.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
くつも。[l][r]
You’re shoes are too. [l][r]
[cm]
#けんたろう
[font color=deepskyblue]
ありがとう。。。かな[l][r]
T-Thanks…?[l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Umm.. maybe I should move on to another conversation before things get strange. )[l]
[cm]
@jump target=*jjBotheringResult
*jjBotheringResult
[cm]
#ガイド
[font color=white]
Since the KIT students are busy, some of them pack up and head home to work on homework. [l][r]
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Kentarou turns around before leaving and waves at you. [l][r]
[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
And the right way to say bye.. is.. umm…[l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjGoodbyeA] 1- バイバイ〜[endlink][r]
[link target=*jjGoodbyeB] 2- さようなら[endlink][r]
[link target=*jjGoodbyeC] 3- またね[endlink][r]
[link target=*jjGoodbyeD] 4- であえてよかった[endlink]
[resetfont]
[s]
*jjGoodbyeA
[eval exp="f.points=f.points+4"]
[cm]
#ガイド
Kentarou smiles and heads out.[l][cm]
@jump target=*jjGoodbyeResult
*jjGoodbyeB
[eval exp="f.points=f.points+2"]
[cm]
#ガイド
Kentarou nods and heads out.[l][cm]
@jump target=*jjGoodbyeResult
*jjGoodbyeC
[eval exp="f.points=f.points+&"]
[cm]
#ガイド
Kentarou smiles and heads out.[l][cm]
@jump target=*jjGoodbyeResult
*jjGoodbyeD
[cm]
#ガイド
Kentarou’s eyes widen and makes a very uncomfortable face for a second, turns around, and then leaves.[l][cm]
@jump target=*jjGoodbyeResult
*jjGoodbyeResult
[cm]
#ガイド
[font color=white]

;FADE OUT
[freeimage layer=1 page=fore]
[bg storage=kuro.jpg time=1200 wait=true method=crossfade]
Later...[l]
[bg storage=IMG_gakustei.jpg time=1200 wait=true method=crossfade]
[cm]
After you finish basketball, you have an internship at the Student Station. [l]
You are learning how to make Washi, a special type of Japanese paper.[l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Hmm… This doesn’t look right. I should ask.) [l][cm]
[font color=orchid]
こうですか[l][r]
Is this correct?[l][cm]
#学ステイ人
[font color=yellow]
えっと、それはちょっと。。[cm]
[font color=yellow]
ほら、ペットボトルに入れて、こうして、[cm]
[font color=yellow]
わくに入れて、ぎゅっ、ぎゅってして[cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Ahh! I can’t tell what he’s saying. [l]
He is speaking way too fast, also not giving me a direct answer.)[l][r]
(I could probably understand… [l]
But I just need to tell him to slow down…)[l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjSlowA] 1- えっと、わかりません。[endlink][r]
[link target=*jjSlowB] 2- すみません、もっとゆっくりいってください。[endlink][r]
[link target=*jjSlowC] 3- はやいです。[endlink]
[resetfont]
[s]
*jjSlowA
[eval exp="f.points=f.points+2"]
[cm]
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaMessedUp.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
The student station worker repeats what he said, even faster this time since he is a bit nervous. [l][cm]
You wind up not understanding, and your washi paper came out a bit of a mess, but still in tact.[l][cm]
@jump target=*jjSlowResult
*jjSlowB
[eval exp="f.points=f.points+6"]
[cm]
#学ステイ人
[font color=yellow]
あ、まず、５分ぐらいもうティッシュが入っていたペットボトルをふって、わくの右に入れてと言いました。[l][r]
Ah, I said that you need to shake the bottle with the tissue paper in it for 5 minutes and put it in the right side of the frame.[l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaReallyHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
そうですか[l][r]
Ah, yes. [l][cm]
[font color=orchid]
Thank god I understood. And my washi paper is coming out great![l][cm]
@jump target=*jjSlowResult
*jjSlowC
[eval exp="f.points=f.points+3"]
[cm]
#学ステイ人
[font color=yellow]
何が早かった？[l][r]
What is fast?[l][cm]
#ジア
あの、早く言いましたから。。。[l][r]
You are speaking fast. [l][cm]
#学ステイ人
[font color=yellow]
あ、ごめん。[l][r]
Oh. I am sorry. [l][cm]
#ガイド
[font color=white]
He tells you the instructions again, this time slower. [l]
You understand and make the washi paper correctly.[l][cm]
@jump target=*jjSlowResult
*jjSlowResult
[cm]
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=white]
After your work is done, the person you have been working with at the Student Station gives a small bow. [l][cm]
#学ステイ人
[font color=yellow]
おつかれさまでした。[l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Oh crap.. What do I say?)[l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjOtsukareA] 1- おつかれさまでした[endlink][r]
[link target=*jjOtsukareB] 2- ありがとうございました[endlink][r]
[link target=*jjOtsukareC] 3- しつれいします[endlink]
[resetfont]
[s]
*jjOtsukareA
[eval exp="f.points=f.points+1"]
[cm]
#ガイド
The student station worker looks at you a little oddly for a second and continues on his way of life.[l][cm]
@jump target=*jjOtsukareResult
*jjOtsukareB
[eval exp="f.points=f.points+5"]
[cm]
#ガイド
The student station worker nods. [l]You smile, knowing you didn’t screw up.[l][cm]
@jump target=*jjOtsukareResult
*jjOtsukareC
[eval exp="f.points=f.points+2"]
[cm]
#ガイド
The student station looks like he expected you to say something else, but he nods.[l][cm]
@jump target=*jjOtsukareResult
*jjOtsukareResult
[bg storage=IMG_outsideKIT.jpg time=1200 wait=true method=crossfade]
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
On your way home, about to leave campus, you run into the President of the school. [l][r]
He recognizes you are one of the study abroad students and begins talking to you. [l][cm]
#学長
[font color=yellow]
こんにちは、ジュリアさん。[l][r]
Hello, Julia. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaEmbarressed.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
(Holy Crap! I better not screw up this one!)[l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjPrezA] 1- こんにちは、がくちょう先生[endlink][r]
[link target=*jjPrezB] 2- こんにちは、しゃちょう先生[endlink][r]
[link target=*jjPrezC] 3- こんにちは、てんちょう先生[endlink]
[resetfont]
[s]
*jjPrezA
[eval exp="f.points=f.points+6"]
[cm]
#ガイド
The President smiles and asks you about your day. [l]
Luckily you remember to use polite form and the conversation goes well.[l][cm]
@jump target=*jjPrezResult
*jjPrezB
[eval exp="f.points=f.points+2"]
[cm]
#ガイド
The President makes a puzzled face for a second, but understands what you are trying to say. [l]
He then excuses himself and you wonder what you said wrong.[l][cm]
@jump target=*jjPrezResult
*jjPrezC
[eval exp="f.points=f.points+1"]
[cm]
#ガイド
The President makes a puzzled face for a second, but understands what you are trying to say. [l]
He then excuses himself and you wonder what you said wrong.[l][cm]
@jump target=*jjPrezResult
*jjPrezResult
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
The President then leaves, as he seems very busy. [l]
You were happy he stopped by to talk to you though. [l]
You head back to your apartment. [l][cm]
[bg storage=IMG_jiaApartment.jpg time=1200 wait=true method=crossfade]
You are able to exchange LINE numbers with some of the guys you played basketball with. [l]
Sitting at your computer,  you start getting hungry and realize you don’t really have any plans for the night. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaThinking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
Man, I should get some dinner with someone. [l]
Maybe that Kentarou guy is free. [l]
I got his Line earlier so might as well try. [l][cm]
;SHOW IMAGE OF PHONE
#ガイド
[font color=white]
You take out your phone.[l][cm]
#ジア
[font color=orchid]
Okay.. Inviting him out to dinner… What was it in Japanese again? [l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjDinnerA] 1- こんばんは、ひまなら、ばんごはんたべたい？[endlink][r]
[link target=*jjDinnerB] 2- あの、ひまなら、ばんごはんにあそびに行きますか。[endlink][r]
[link target=*jjDinnerC] 3- こんばんは、ひまなら、いっしょにばんごはんに食べに行きませんか。[endlink]
[resetfont]
[s]
*jjDinnerA
[eval exp="f.points=f.points+3"]
[cm]
#けんたろう（LINE）
[font color=lime]
「今？うん、暇だよ。いいレストラン知ってるよ。」[l][r]
“Right now? I’m free. I know a good place.”[l][cm]
@jump target=*jjDinnerResult
*jjDinnerB
[eval exp="f.points=f.points+1"]
[cm]
#けんたろう（LINE）
[font color=lime]
「ごめん、あんまりわからない。今、暇だよ。いっしょにどこかに食べに行きたいってこと？」[l][r]
“I don't really understand. I am free right now. Did you asking if you want to eat together with me?”[l][cm]
#ジア
[font color=orchid]
I thought that is what I said…. [l][cm]
#けんたろう（LINE）
[font color=lime]
「なら、いいレストラン知ってるよ。」[l][r]
“If so, I know a good place to eat.”[l][cm]
@jump target=*jjDinnerResult
*jjDinnerC
[eval exp="f.points=f.points+6"]
[cm]
#けんたろう（LINE）
[font color=lime]
「いいね。今、暇だよ。いいレストラン知ってるよ。」[l][r]
“Sure, that sounds nice. I am free right now. I know a good restaurant we can go to.”[l][cm]
@jump target=*jjDinnerResult
*jjDinnerResult
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=white]
Kentarou sends you the address on google maps and will meet you there in 20 minutes. [l]
Its relatively close to your apartment, so its not very long of a walk. [l][cm]
[bg storage=IMG_street.jpg time=1200 wait=true method=slide]
[freeimage layer=1 page=fore]
[image storage="default/JiaEmbarressed.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
You stop at a red light. [l]
You already kind of lost your way, and now this red light is keeping you back. [l]
You are a minute away from the restaurant and already a late. [l][cm]
After the light turns green, you book it to the restaurant, as you know that people in Japan appreciate being on time. [l][cm]
You see Kentarou in the distance waving.[l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjLateDateA] 1- おそくなってごめなさい[endlink][r]
[link target=*jjLateDateB] 2- おまたせしました[endlink][r]
[link target=*jjLateDateC] 3- こんばんは[endlink]
[resetfont]
[s]
*jjLateDateA
[eval exp="f.points=f.points+4"]
@jump target=*jjLateDateResult
*jjLateDateB
[eval exp="f.points=f.points+3"]
@jump target=*jjLateDateResult
*jjLateDateC
[eval exp="f.points=f.points+1"]
@jump target=*jjLateDateResult
*jjLateDateResult
[cm]
[bg storage=IMG_restaurant.jpg time=1200 wait=true method=explode]
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
Kentarou and you go into the restaurant and sit down. [l]
There a lot of different foods and you can’t really read anything. [l]
You ask for his recommendation. [l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjMusumeA] 1- おすすめはなんですか[endlink][r]
[link target=*jjMusumeB] 2- おむすめはなんですか[endlink]
[resetfont]
[s]
*jjMusumeA
[cm]
[eval exp="f.points=f.points+5"]
#けんたろう
[font color=deepskyblue]
ここのラーメンはおいしくて、やすいよ。これおすすめだよ。[l][r]
The ramen here is good and cheap. I recommend this one. [l][cm]
@jump target=*jjMusumeResult
*jjMusumeB
[cm]
#けんたろう
[font color=deepskyblue]
誰かの子供で、女の子のことだよ。どうして？ [l][r]
Musume means someone’s child that is a girl. Why?[l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaEmbarressed.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あ、いいえ、何でもない。[l][r]
Oops I mean… Its nothing.[l][cm]
[font color=orchid]
(I guess I said something else...)[l][cm]
#ガイド
[font color=white]
You order something based on its appearance and pray it doesn't have Nattou in it.[l][cm]
@jump target=*jjMusumeResult
*jjMusumeResult
[cm]
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=white]
Kentarou calls the waiter by pushing the button, which would be rude in America but is how you order in Japan. [l]
You discuss this with Kentarou as you wait for you food. [l][cm]
As you talk, he begins to use a more casual style of Japanese with you. [l]
You want to chat and learn more about him.[l][cm]
[font size=24 bold=true]
[font color=cyan]
[link target=*jjChatMoreA] 1- けんたろうはかっこいいです[endlink][r]
[link target=*jjChatMoreB] 2- あの、しゅみはなんですか[endlink][r]
[link target=*jjChatMoreC] 3- いつかアメリカに行きたいの？[endlink][r]
[link target=*jjChatMoreD] 4- けんたろうのしょうらいのゆめは なに？[endlink]
[resetfont]
[s]
*jjChatMoreA
[cm]
#けんたろう
[font color=deepskyblue]
あ,ありがとう。。。[l][r]
Um.. T-Thanks…[l][cm]
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaMessedUp.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=white]
Kentarou suddenly becomes very shy and a bit uncomfortable. [l]
The rest of dinner is a little awkward.[l][cm]
@jump target=*jjChatMoreResult
*jjChatMoreB
[cm]
[eval exp="f.points=f.points+3"]
#けんたろう
[font color=deepskyblue]
もうアニメとゲームについてはさっき話したんだけど。。[l][r]
I thought I mentioned Anime and video games earlier. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaMessedUp.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あ、そうだったね。ごめん。[l][r]
Oh yeah, you did. Oops.[l][cm]
#ガイド
[font color=white]
Kentarou talks about anime again and which are his favorites. [l][cm]
@jump target=*jjChatMoreResult
*jjChatMoreC
[cm]
[eval exp="f.points=f.points+5"]
#けんたろう
[font color=deepskyblue]
あ。。。夢は、アメリカに行きたい。アメリカに行って、会社に勤めたいんだ。[l][r]
Its always been my dream to go to America. I want to go and work for a company there. [l][cm]
#ジア
[font color=orchid]
本当？がんばってね。[l][r]
Really? I’ll be rooting for you. [l][cm]
#けんたろう
[font color=deepskyblue]
ありがとう。[l][r]
Thanks. [l][cm]
#ガイド
[font color=white]
Kentarou smiles, and shyly looks away. [l]
You have a very good conversation about America and about the differences between Japanese culture and American culture. [l][r]
You both have a very good time. [l][cm]
@jump target=*jjChatMoreResult
*jjChatMoreD
[cm]
[eval exp="f.points=f.points+6"]
#けんたろう
[font color=deepskyblue]
僕の夢かなあ。。。アメリカに行って、会社に勤めたいんだ。でも、難しいよね。[l][r]
My future dream? Well I want to go to America and work for a company. It wont be easy thought. [l][cm]
#ジア
[font color=orchid]
会社に勤められるといいね！アメリカって自由の国だけど、アメリカ人は人によって、何をしてもいいと思っているんだ。[l][r]
I hope you get a job! America is called the country of freedom, but to some Americans it means they can act without responsibility.[l][cm]
#けんたろう
[font color=deepskyblue]
へえ、そうなの？[l][r]
Hah, is that so?[l][cm]
#ジア
[font color=orchid]
うん、アメリカ人は時々馬鹿だと思うね。[l][r]
Yup, Americans can be pretty stupid sometimes. [l][cm]
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaReallyHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=white]
Kentarou smiles, and jumps right into the conversation about Americans and about American culture. [l]
You ask a lot of questions about Japanese culture as well, and the conversation goes very well. [l][r]
Both of you have a very good time.[l][cm]
@jump target=*jjChatMoreResult
*jjChatMoreResult
#ガイド
[freeimage layer=1 page=fore]
[image storage="default/JiaTalking.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[cm]
[font color=white]
After dinner, you and Kentarou head outside of the Restaurant. [l][cm]
[bg storage=IMG_street.jpg time=1200 wait=true method=explode]

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
こんばん、ありがとう。今、ちょっと。。。課題があるから、帰る。[l][r]
That was nice. I have projects to get back to, so I should go. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaDokiDoki.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あ、そう。えっと。。けんたろうが好きだよ。私のことをどう思う？[l][r]
Oh, okay. Umm…I like you, Kentarou. what do you think of me[l][cm]
#けんたろう
[font color=deepskyblue]
えっと。。。気になるなあ。。[l][r]
Umm… You put me on the spot.[l][cm]
[font color=deepskyblue]
………[l][cm]
[font color=deepskyblue]
友達として。[l][r]
I like you as a friend. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaMessedUp.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あ、そう思った。いいよ。[l][r]
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
(Oh yeah a goodbye hug isn’t really… a thing here…)[l][cm]
#ガイド
[font color=white]
Kentarou hugs you, and the turns around. [l][cm]
#ジア
[freeimage layer=1 page=fore]
[image storage="default/JiaHappy.png" layer=1 page=fore visible=true width="419"  height="744"  x="290"  y="-104" ]
[font color=orchid]
あの、バイバイ！ありがとう、ね！楽しかったよ。[l][r]
Um.. B-Bye! Thanks again! It was fun![l][cm]
#けんたろう
[font color=deepskyblue]
はい。[l][r]
Yes. [l][cm]
#ジア
[font color=orchid]
こ,今度いっしょに遊ぼうよ。[l][r]
L-Lets hang out again![l][cm]
#けんたろう
[font color=deepskyblue]
はい。[l][r]
Yes. [l][cm]
#ガイド
[font color=white]
Kentarou makes his way home and you turn around.[l][cm]
#ジア
[font color=orchid]
Hmm.. Could have gone better, but I had fun though! [l]
I cant believe I actually got rejected by a Japanese guy and got to 告白　（こくはく）! [l]
Which is the confession of love! [l][cm]
[font color=orchid]
Even though I got rejected, I’m so happy I got to have that experience! [l]
Time to go home and pass out, Im beat![l][cm]
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
じゃ、もう一つ、日本の文化について教えてあげようか[l][r]
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
これ、いい？壁ドンて言うんだ。アメリカにはこんなことあるんだ？[l][r]
Is this okay? In Japanese this is called a kabedon. Is there this kind of thing in America?[l][cm]
#ジア
[font color=orchid]
い、いいえ。。。でも、すごい。。。ロマンチックよ。[l][r]
U-Um…. N-No… B-But its very .. um… romanctic…[l][cm]
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
ごめん、課題があるんだ。じゃ、また会おう。[l][r]
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
す,すごく楽しかった、けんたろう！もう一度けんたろうといっしょに遊びたいよ。[l][r]
T-That was really fun Kentarou! [l][cm]
[font color=orchid]
けんたろうは本当にかっこいい。[l][r]
I hope we can go out again..! [l][cm]
[font color=orchid]
メガネもめちゃかっこいいし。[l][r]
You're so cool, and your um… glasses are really really nice… and .. [l][cm]
#ガイド
[font color=white]
Kentarou starts looking really, really uncomfortable. [l][cm]
#けんたろう
[font color=deepskyblue]
えっと。。あの。。[l][r]
Umm… Umm…[l][cm]
#ジア
[font color=orchid]
て,手をにぎってもいい？いいかな？[l][r]
C-can I hold your hand, Is that cool? [l][cm]
[font color=orchid]
私はアニメのメガネをかけてるキャラが大好きだし、けんたろうはアニメのキャラみたいんだし、かっこいいし。。[l][r]
I mean in Anime I love the glasses characters the most and you look like an Anime boy and youre very cool….[l][cm]
#けんたろう
[font color=deepskyblue]
やめてください[l][r]
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
帰る。[l][r]
I am going home. [l][cm]
#ガイド
[font color=white]
He did not even give you a "goodbye" or "we can hang out again." [l]
You are left alone on the sidewalk outside of the restaurant, confused and alone. [l][cm]
Standing there alone, you reflect on your choices today. You didn’t really pick up on some cues, and you didn’t really communicate was well as you should. [l][cm]
[font color=white]
You sit there, let out a sigh, and pray that tomorrow you listen a little more, you understand culture a little more, and you make a better impression. [l]
Then, a Japanese bear comes out of the bush from behind, and eats you alive. [l][cm]
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

;;CONNOR ROUTE
[elsif exp="f.route=='connor'"]
#ガイド
[font clor=white]

[cm]This is connor's route[l][r]
[endif]
[_tb_end_tyrano_code]

[s  ]
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

