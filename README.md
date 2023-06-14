# nowplaying.sh

## 概要
* Linux 環境で、現在再生中の音楽情報を表示およびクリップボードに送るスクリプト
* vlc、mpv、RhythmBox、web browsers、cmus、mpd、spotify、Strawberryなどに対応。

## 使用方法
### ターミナルに表示

```sh
$ ./nowplaying.sh
```

### クリップボードに送信 (コピー)
```sh
$ ./nowplaying.sh -c
```

### フォーマットの編集
* スクリプトと同じディレクトリ内にある `template.txt` を編集する。
* フォーマットは、playerctl のフォーマットを参照
	* [altdesktop/playerctl: 🎧 mpris media player command\-line controller for vlc, mpv, RhythmBox, web browsers, cmus, mpd, spotify and others\.](https://github.com/altdesktop/playerctl#printing-properties-and-metadata)

## 動作要件
* bash
* xclip
* [playerctl](https://github.com/altdesktop/playerctl#printing-properties-and-metadata)

## License
The MIT License (MIT)

Copyright (c) 2023 mumeiyamibito


## Authors
* mumeiyamibito


## ChangeLog
### Ver. 1.0 (2023/06/14)
* リリースした。
