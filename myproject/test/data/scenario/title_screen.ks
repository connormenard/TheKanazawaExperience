[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[bg  storage="IMG_kanazawaEki.jpg"  ]
*title

[glink  text="はじめから(Start)"  x="600"  y="370"  target="*start"  color="green"  width="200"  ]
[glink  text="つづきから(Continue)"  x="600"  y="470"  target="*load"  color="blue"  width="200"  height="60"  ]
[s  ]
*start

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]
*load

[showmenubutton]

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
